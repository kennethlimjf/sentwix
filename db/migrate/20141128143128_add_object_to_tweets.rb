class AddObjectToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :object, :hstore, null: false
    remove_column :tweets, :text
    remove_column :tweets, :created_at
  end
end
