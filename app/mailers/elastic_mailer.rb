class ElasticMailer < ActionMailer::Base
  default to: "elasticcontacts@gmail.com"

  def signup_notification(message)
    mail(:subject => "Website Email", :body => "#{message.content}  Name:#{message.name} Email:#{message.email} Phone:#{message.phone}", :from => "#{message.name} <#{message.email}>")
  end

end
