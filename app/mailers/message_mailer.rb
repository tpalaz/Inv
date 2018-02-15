class MessageMailer < ActionMailer::Base

  default from: "info@investblock.capital"
  default to: "info@investblock.capital"

  def new_message(message)
    @message = message
	mail from: message.email, subject: "[INQUIRY]"
  end
  
  def send_message(message)
    @message = message
    mail to: message.email, subject: "[InvestBlock] Information"
  end

end