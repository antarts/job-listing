class WelcomeController < ApplicationController
  def index
    flash[:notice] = 'Hi ! Welcome to Jbo Listing ！'
   end
end
