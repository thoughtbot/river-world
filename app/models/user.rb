class User < ApplicationRecord
  has_many :user_streams
  has_many :streams, through: :user_streams
  has_many :messages, through: :streams
end
