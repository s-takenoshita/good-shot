class CreateTournaments < ActiveRecord::Migration[5.2]
  def change
    create_table :tournaments do |t|
      t.string      :name,        null: false, default: ""
      t.date        :dates
      t.integer     :party_id
      t.timestamps
    end
  end
end
