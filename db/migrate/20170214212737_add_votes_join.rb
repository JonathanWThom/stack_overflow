class AddVotesJoin < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.column :user_id, :integer
      t.column :question_id, :integer
      t.column :value, :integer
    end

    remove_column :questions, :votes
    remove_column :responses, :response_votes
  end
end
