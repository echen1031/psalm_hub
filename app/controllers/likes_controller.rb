class LikesController < ApplicationController
  def create
    @song = Song.find(params[:song_id])
    @like = current_user.likes.build(song: @song)
    
    if @like.save
      flash[:notice] = "Successfully Liked this song"
      redirect_to root_path
    else
      flash[:alert] = @like.errors.full_messages.to_sentence
      redirect_to root_path
    end
  end
  
  def destroy
  end
end
