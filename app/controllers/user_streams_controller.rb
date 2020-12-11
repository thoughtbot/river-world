class UserStreamsController < ApplicationController
  def show
    user_stream = UserStream.find(params[:id])
    if user_stream
      @streams = Stream.all
      @user = user_stream.user
    end
  end

  def create
    stream = Stream.find(params[:stream_id])
    UserStream.create(user: @user, stream: stream)
  end
end
