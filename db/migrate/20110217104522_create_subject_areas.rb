class CreateSubjectAreas < ActiveRecord::Migration
  def self.up
    create_table :subject_areas do |t|
      t.string :title
      t.string :filename

      t.timestamps
    end
  end

  def self.down
    drop_table :subject_areas
  end
end
