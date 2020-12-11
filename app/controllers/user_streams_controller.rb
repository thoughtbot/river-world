class UserStreamsController < ApplicationController
  def show
    user_stream = UserStream.find(params[:id])
    if user_stream
      @stream = user_stream.stream
      @user = user_stream.user
    end
  end
end
