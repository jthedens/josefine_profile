class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(messages_params)
    if @message.save
      ApplicationMailer.general_message(@message).deliver_now
      redirect_to root_path, notice: "Thanks for contacting me"
    else
      redirect_to root_path, alert: "Something went wrong"
    end
  end

  def disclaimer
  end

  private

  def messages_params
    params.require(:message).permit(:name, :email, :message)
  end
end
