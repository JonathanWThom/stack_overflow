class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.column :content, :string
      t.column :user_id, :integer
      t.column :question_id, :integer
    end
  end
end
