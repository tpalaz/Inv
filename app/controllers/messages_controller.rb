class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    
    if @message.valid?
      MessageMailer.new_message(@message).deliver
	  MessageMailer.send_message(@message).deliver_now
	  flash[:emailed] = "Email Received"
      redirect_to root_path
    else
      flash[:alert] = "An error occurred while delivering this message."
      render :new
    end
  end

private

  def message_params
    params.require(:message).permit(:fname, :lname, :email, :content, :phone, :phonecontact)
  end

end