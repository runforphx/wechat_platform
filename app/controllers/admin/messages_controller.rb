class Admin::MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    if Message.create(message_params)
      flash[:notice] = 'Successfully!'
      redirect_to admin_messages_path
    else
      flash[:error] = 'Failed!'
      redirect_to new_admin_message_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:title, :content)
  end
end
