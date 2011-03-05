class CreatePostingLanguages < ActiveRecord::Migration
  def self.up
    create_table :posting_languages do |t|
      t.integer :posting_id
      t.integer :language_id
      t.timestamps
    end
  end

  def self.down
    drop_table :posting_languages
  end
end
