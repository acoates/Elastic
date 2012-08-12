class ElasticMailer < ActionMailer::Base
  default to: "elasticclients@gmail.com"

  def signup_notification(message)
    mail(:subject => "Website Email", :body => "#{message.content}", :from => "#{message.name} <#{message.email}>")
  end

end
