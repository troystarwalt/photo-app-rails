class PagesController < ApplicationController
  def index
    @most_recent = Photo.last_five
  end
end
