class SongsController < ApplicationController
  def index
    #@songs = AWS::S3::Bucket.find(ENV["AWS_BUCKET_NAME"]).objects
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def upload
    begin
      AWS::S3::S3Object.store(sanitize_filename(params[:mp3file].original_filename), params[:mp3file].read, ENV["AWS_BUCKET_NAME"], :access => :public_read)
      redirect_to root_path
    rescue
      render :text => "Couldn't complete the upload"
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
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      flash[:notice] = "Song created successfully."
      redirect_to song_path @song
    else
      flash[:error] = "Song could not be saved. Please try again."
      render action: :new
    end
  end

  private

  def sanitize_filename(file_name)
    just_filename = File.basename(file_name)
    just_filename.sub(/[^\w\.\-]/,'_')
  end

  def song_params
    params.require(:song).permit(:title, :lyrics)
  end
end

