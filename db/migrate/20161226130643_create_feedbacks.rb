class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.integer  :user_id
      t.string   :content	

      t.timestamps
    end
  end
end
