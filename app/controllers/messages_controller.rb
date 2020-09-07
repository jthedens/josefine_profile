class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(messages_params)
    @my_email = ENV["EMAIL_USER"]
    if @message.save
      ApplicationMailer.general_message(@message).deliver_now
      flash[:alert] = "Thanks for contacting me!"
      redirect_to root_path
    else
      flash[:alert] = "Sorry, something went wrong!"
      render 'pages/contact'
    end
  end

  def disclaimer
  end

  private

  def messages_params
    params.require(:message).permit(:name, :email, :message)
  end
end
