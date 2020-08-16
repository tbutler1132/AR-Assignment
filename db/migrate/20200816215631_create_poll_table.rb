class CreatePollTable < ActiveRecord::Migration[6.0]
  def change
    create_table :polls do |t|
      t.string :title
      t.integer :user_id
    end
  end
end
