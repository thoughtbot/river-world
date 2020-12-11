class UserStreamsController < ApplicationController
  def show
    @streams = Stream.all
    @user = User.first
    @stream_messages = @user.streams.joins(:messages).uniq.flat_map(&:messages)
  end

  def create
    @user = User.first
    stream = Stream.find(params[:stream_id])
    user_stream = UserStream.create(user: @user, stream: stream)

    redirect_to user_stream_path(user_stream)
  end
end
