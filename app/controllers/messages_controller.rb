class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    if @message.valid?
      ElasticMailer.signup_notification(@message).deliver
      redirect_to request.referrer, notice: "Message sent! Thank you for contacting us."
    else
      render 
    end
  end
end
