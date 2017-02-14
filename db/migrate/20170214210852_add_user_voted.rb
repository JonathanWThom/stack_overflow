class AddUserVoted < ActiveRecord::Migration[5.0]
  def change
    add_column :responses, :user_voted_id, :integer
  end
end
