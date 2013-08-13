class HomeController < ApplicationController
  protect_from_forgery with: :null_session
  def index
  end
  def create


    @message = Message.new
    @message.name = params[:name]
    @message.email = params[:email]
    @message.subject = params[:subject]
    @message.body = params[:body]

    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to(root_path, :notice => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      redirect_to root_path(anchor: 'email')
    end
  end
end
