class ElasticMailer < ActionMailer::Base
  default to: "elasticcontacts@gmail.com"

  def signup_notification(message)
    mail(:subject => "Website Email", :body => "#{message.content}/n/n#{message.name} <#{message.email}>", :from => "#{message.name} <#{message.email}>")
  end

end
