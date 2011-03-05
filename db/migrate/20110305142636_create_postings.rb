class CreatePostings < ActiveRecord::Migration
  def self.up
    create_table :postings do |t|
      t.string :display_name
      t.string :idea
      t.timestamps
    end
  end

  def self.down
    drop_table :postings
  end
end
