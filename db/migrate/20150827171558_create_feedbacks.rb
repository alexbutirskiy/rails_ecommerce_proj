class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :subj
      t.text :msg
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
