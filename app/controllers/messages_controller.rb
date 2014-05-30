class MessagesController < ApplicationController
  layout 'application'

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      # TODO save message to database
      @message.save

      # TODO send message here
      ContactsMailer.new_message(@message).deliver
    else

    end
  end
end