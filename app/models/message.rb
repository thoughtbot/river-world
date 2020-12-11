class Message < ApplicationRecord
  belongs_to :user
  has_many :stream_messages
  has_many :streams, through: :stream_messages
end
