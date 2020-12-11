FactoryBot.define do
  factory :stream_message do
    stream
    message
  end

  factory :message do
    sequence(:body) { |n| "Message number #{n}" }
  end

  factory :user_stream do
    user
    stream
  end

  factory :stream do
    sequence(:name) { |n| "Stream #{n}" }
  end

  factory :view do
  end

  factory :user do
    sequence(:display_name) { |n| "Jane #{n}" }
  end
end
