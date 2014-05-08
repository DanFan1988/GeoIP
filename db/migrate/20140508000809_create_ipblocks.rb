class CreateIpblocks < ActiveRecord::Migration
  def change
    create_table :ipblocks do |t|

      t.timestamps
    end
  end
end
