class WelcomeController < ApplicationController
  def index
    flash[:notice] = 'Hi ！Welcome to Job Listing ！'
  end
end
