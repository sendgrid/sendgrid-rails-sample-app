class EmailController < ApplicationController

  # sample form
  def index
   
  end

  # send email
  def sending
    to = params[:toAddress]
    subject = params[:subject]
    body = params[:body]
    
    begin
      response = SendgridMailer.email(to, subject, body).deliver
      flash[:message] = "Your email was successfully sent."
      flash[:class] = 'alert-success'
    rescue Exception => e
      flash[:message] = e.message
      flash[:class] = 'alert-error'
    end

    redirect_to root_url
  end
end 
