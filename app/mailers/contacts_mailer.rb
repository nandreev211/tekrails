class ContactsMailer < ActionMailer::Base
  default to: "n.andreev.211@gmail.com"

  def new_message(message)
    @message = message
    # mail(:from => "#{message.name}"+"<#{message.email}>", :body => "#{message.message}", :reply_to => message.email)

    require 'rest_client'

    @API_KEY = ENV['MAILGUN_API_KEY']
    @API_URL = "https://api:#{@API_KEY}@api.mailgun.net/v2/tekrails.com"

    RestClient.post @API_URL+"/messages",
                    :from => "#{message.name}"+"<#{message.email}>",
                    :to => "n.andreev.211@gmail.com",
                    :text => "#{message.message}"
  end
end
