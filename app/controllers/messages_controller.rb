class MessagesController < ApplicationController

  def create
    @message = Message.new params.require(:message).permit(:from, :email, :message)
    # if @message.save
    #   redirect_to root_path, notice: "Thanks! We'll never be in touch"
    # else
    #   redirect_to :back, alert: "Something wrong: #{@message.errors.full_messages.join(', ')}"
    # end
    @message.save
  end
end
