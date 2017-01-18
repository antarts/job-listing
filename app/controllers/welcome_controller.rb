class WelcomeController < ApplicationController
  def index
    flash[:notice] = 'Hi ! Welcome to 48K Offer ！'
   end
end
