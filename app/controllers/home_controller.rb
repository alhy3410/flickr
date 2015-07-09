class HomeController < ApplicationController
  def index
    randomImageNumber = rand(1..Photo.all.length)
    @photo = Photo.find(randomImageNumber)
  end


end
