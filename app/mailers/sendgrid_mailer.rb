class SendgridMailer < ActionMailer::Base

  # send email using ActionMailer
  #
  # to          String     'to' email address
  # subject     String     subject of email
  # body        String     content of email
  #
  def email(to, subject, body)
    mail(:to => to, :from => 'info@sampleApp.com', :subject => subject) do |format|
      format.text { render :text => body }
      format.html { render :text => body }
    end
  end
end