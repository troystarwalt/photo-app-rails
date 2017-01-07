class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find_by_id(params[:id])
    if @photo.nil?
      redirect_to root_path
    end
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
    if @photo.destroy
      puts "deleted"
      redirect_back(fallback_location: root_path)
    else
      puts "couldn't delete"
      redirect_back(fallback_location: root_path)
    end
  end

  def edit
    if current_admin
      @photo = Photo.find(params[:id])
    else
      flash.alert = "Sorry, you aren't allowed there."
      redirect_to root_url
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :title, :description, :date_taken, {images: []})
  end
end
