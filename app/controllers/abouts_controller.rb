class AboutsController < ApplicationController
  def index
    @scientists = Scientist.all 
    @planets = Planet.all
  end
end
