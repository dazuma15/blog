class PhotosController < ApplicationController
  def create
    @album = Album.find(params[:album_id])
    @photo = @album.photos.create(photo_params)
      
    respond_to do |format|
        format.js
    end
  end
  
  def destroy
    @album = Album.find(params[:album_id])
    @photo = @album.photos.find(params[:id])
    @photo.destroy
    redirect_to album_path(@album)
  end
  
  private
  
  def photo_params
    params.require(:photo).permit(:upload)
  end
end
