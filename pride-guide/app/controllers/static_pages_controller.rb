class StaticPagesController < ApplicationController

  def about
    render :about
  end
  
  def home
    render :home
  end

  def help
    render :help
  end

  def contact
    render :contact
  end

end
