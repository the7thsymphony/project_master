class MessageController < ApplicationController

before_action :find_message, only: [:show, :destroy]

  def index

    @messages = Message.all

  end

  def new

    @message = Message.new

  end

  def show
    @message = Message.new
  end

  def create

    @message = Message.new(message_params)
    if @message.save
      redirect_to @message
    else
      render :new

  end

  end

  def edit

     @message = Message.find(params[:id])

  end

  def destroy
    @message.destroy
    redirect_to message_path

  end

  private

  def find_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:body)

  end

end
