class CreateReceipts < ActiveRecord::Migration[5.1]
  def change
    create_table :receipts do |t|
      t.integer :message_id
      t.integer :receiver_id
      t.timestamps
    end
  end
end
