class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :commenter, :limit => 50, :default => "" 
      t.text :body
      t.references :commentable, :polymorphic => true
      t.references :post
      t.timestamps
    end

    add_index :comments, :commentable_type
    add_index :comments, :commentable_id
    add_index :comments, :post_id
  end

  def self.down
    drop_table :comments
  end
end
