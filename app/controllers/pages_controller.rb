class PagesController < ApplicationController
  def home
  end

  def projects
  end

  def about
  end

  def contact
    @message = Message.new
    @email = ENV["EMAIL_USER"]
  end
end
