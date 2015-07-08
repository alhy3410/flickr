class PhotosController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = current_user.photos.build
  end

  def create
    @photo = current_user.photos.build(photo_params)
    if @photo.save
      redirect_to photos_path
    else
      render :new
    end
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      redirect_to photo_path(@photo)
    else
      render :edit
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path
  end

  private
  def photo_params
    params.require(:photo).permit(:photographer, :datetaken, :camera, :details)
  end

end
