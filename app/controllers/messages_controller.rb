class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    if @message.valid?
      ElasticMailer.signup_notification(@message).deliver
      flash[:notice] = "Message sent! Thank you for contacting us."
      redirect_to request.referrer
    else
      render 
    end
  end
end
