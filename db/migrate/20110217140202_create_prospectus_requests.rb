class CreateProspectusRequests < ActiveRecord::Migration
  def self.up
    create_table :prospectus_requests do |t|
      t.boolean :full

      t.timestamps
    end
  end

  def self.down
    drop_table :prospectus_requests
  end
end
