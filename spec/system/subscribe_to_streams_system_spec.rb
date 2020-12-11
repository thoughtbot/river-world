require "rails_helper"

RSpec.describe "Subscribe to Streams", :type => :system do
  it "allows user to subscribe to a stream" do
    stream = create(:stream, name: 'dev')
    user = create(:user, display_name: 'Jan')
    
    visit user_stream_path(create(:user_stream))

    find("##{stream.id}").click
    
    expect(page.body).to include(stream.messages.first.body)
  end
end