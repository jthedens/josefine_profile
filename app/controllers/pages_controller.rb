class PagesController < ApplicationController
  def home
  end

  def contact
    @message = Message.new
  end

  def projects
  end

  def about
  end
end
