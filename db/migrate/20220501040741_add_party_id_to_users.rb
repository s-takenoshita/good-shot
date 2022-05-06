class AddPartyIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :party_id, :integer
  end
end
