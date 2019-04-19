class StaticPagesController < ApplicationController

  def about
    render :about
  end

  def login
    render :login
  end
  
  def home
    @comment = current_user.comments.build
    render :home
  end

  def help
    render :help
  end

  def contact
    render :contact
  end

  def glossary
    render :glossary
    @genders = Gender.all
    @pronouns = Pronoun.all
    @orientations = Orientation.all
  end

end
