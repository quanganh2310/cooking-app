class AddConfirmedAtToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :confirm_at, :datetime
  end
end
