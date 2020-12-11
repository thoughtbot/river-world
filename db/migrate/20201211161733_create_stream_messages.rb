class CreateStreamMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :stream_messages do |t|
      t.references :stream, null: false, foreign_key: true
      t.references :message, null: false, foreign_key: true

      t.timestamps
    end
  end
end
