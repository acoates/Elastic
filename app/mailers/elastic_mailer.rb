class ElasticMailer < ActionMailer::Base
  default to: ENV['CONTACT_EMAIL']
  

  def signup_notification(message)
    mail(:subject => "Website Email", :body => "#{message.content}  Name:#{message.name} Email:#{message.email} Phone:#{message.phone}", :from => "#{message.name} <#{message.email}>")
  end

end
