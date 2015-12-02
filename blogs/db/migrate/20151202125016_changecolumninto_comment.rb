class ChangecolumnintoComment < ActiveRecord::Migration
  def change
    rename_column :comments, :comment_id, :user_id
  end
end
