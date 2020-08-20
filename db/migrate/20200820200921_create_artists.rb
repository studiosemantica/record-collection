class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :hot_100_hits

      t.timestamps
    end
  end
end
