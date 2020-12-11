class Stream < ApplicationRecord
  has_many :stream_messages
  has_many :messages, through: :stream_messages
end
