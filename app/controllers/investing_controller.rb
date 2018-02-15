class InvestingController < ApplicationController	
  def investing
	@disable_nav = true
	@message = Message.new
  end

  
  
end
