class SongsController < ApplicationController
  before_action :authenticate_user!

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    if upload_song and @song.update_attributes(song_params)
      flash[:notice] = "Song updated successfully."
      redirect_to song_path @song
    else
      flash[:error] = "Song could not be updated. Please try again."
      render action: :new
    end
  end

  def delete
    if (params[:song])
      AWS::S3::S3Object.find(params[:song], ENV["AWS_BUCKET_NAME"]).delete
      redirect_to root_path
    else
      render :text => "No song was found to delete!"
    end
  end

  def new
    @song = Song.new
    @q = BibleVerse.ransack(params[:q])
    @bible_verses = @q.result
    @bible_verses = @bible_verses.paginate(page: params[:page], :per_page => 1)

    respond_to do |format|
      format.html
    end
  end

  def create
    aws_object = upload_song
    params[:song][:link] = format_link(params[:song][:mp3file])

    if aws_object
      @song = Song.new(song_params)
      if @song.save
        flash[:notice] = "Song created successfully."
        redirect_to song_path @song
      else
        flash[:error] = "Song could not be saved."
        render action: :new
      end
    else
      flash[:error] = "Song could not be uploaded."
      render action: :new
    end
  end

  def format_link(mp3file)
    formatedFileName = mp3file.original_filename.sub(" ","_")
    #todo: dehardcode amazonaws url?
    "http://s3.amazonaws.com/#{ENV['AWS_BUCKET_NAME']}/#{formatedFileName}"
  end

  def upload_song
    begin
      AWS::S3::S3Object.store(
        sanitize_filename(params[:song][:mp3file].original_filename),
        params[:song][:mp3file].read,
        ENV["AWS_BUCKET_NAME"],
        :access => :public_read
      )
    rescue
      nil
    end
  end

  private

  def sanitize_filename(file_name)
    just_filename = File.basename(file_name)
    just_filename.sub(/[^\w\.\-]/,'_')
  end

  def song_params
    params.require(:song).permit(:title, :lyrics, :link)
  end
end

