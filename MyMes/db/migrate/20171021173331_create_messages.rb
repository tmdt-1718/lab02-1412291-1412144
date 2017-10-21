class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.boolean :is_read, default: false
      t.text :content
      t.timestamps
    end
  end
end
