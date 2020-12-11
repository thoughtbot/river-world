class StreamMessage < ApplicationRecord
  belongs_to :stream
  belongs_to :message
end
