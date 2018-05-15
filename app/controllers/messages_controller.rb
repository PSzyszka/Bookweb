class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      UserMailer.notification_email(@message).deliver

      redirect_to(root_path, notice: 'Message was send successfully.')
    else
      render new_message_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:email, :description)
  end
end
