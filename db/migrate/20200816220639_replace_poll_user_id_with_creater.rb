class ReplacePollUserIdWithCreater < ActiveRecord::Migration[6.0]
  def change
    remove_column :polls, :user_id
    add_column :polls, :creator_id, :integer
  end
end
