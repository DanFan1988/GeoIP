class IpblockSetup < ActiveRecord::Migration
  def change

    add_column :ipblocks, :start, :integer
    add_column :ipblocks, :end, :integer
    add_column :ipblocks, :location_id, :integer
    
    create_table :locations do |t|
      t.string :country
      t.string :region
      t.string :city
      t.integer :zipcode
      t.integer :latitude
      t.integer :longitude
      t.integer :metro_code
      t.integer :area_code
    end
    
    add_index :ipblocks, :location_id
    add_index :ipblocks, :start
    add_index :ipblocks, :end
  end
end
