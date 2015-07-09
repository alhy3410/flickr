class HomeController < ApplicationController
  def index
    randomImageNumber = rand(0..Photo.all.length - 1)
    @photo = Photo.all[randomImageNumber]
  end


end
