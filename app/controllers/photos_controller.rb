class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      puts "created"
      redirect_to "/photos"
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to '/photos'
  end

  def edit
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :title, :description, :date_taken, {images: []})
  end
end
