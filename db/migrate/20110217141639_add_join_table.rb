class AddJoinTable < ActiveRecord::Migration
  def self.up
  	create_table :prospectus_requests_subject_areas,:id => false do |t|
  		t.integer :prospectus_request_id
  		t.integer :subject_area_id
  	end
  end

  def self.down
  	drop_table :prospectus_requests_subject_areas
  end
end