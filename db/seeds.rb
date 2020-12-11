# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
user = FactoryBot.create(:user, display_name: "foo")
user_streams = FactoryBot.create_list(:user_stream, 10, user: user)
user_streams.each do |user_stream|
  stream = user_stream.stream
  messages = FactoryBot.create_list(:message, 10, stream: stream )
end
