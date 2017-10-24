class AddReadAtToReceipts < ActiveRecord::Migration[5.1]
  def change
    add_column :receipts, :read_at, :datetime
  end
end
