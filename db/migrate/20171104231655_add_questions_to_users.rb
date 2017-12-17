class AddQuestionsToUsers < ActiveRecord::Migration[5.1]
  def change
      add_attachment :users, :image1
      add_attachment :users, :image2
      add_attachment :users, :image3
      add_attachment :users, :image4
      add_attachment :users, :image5
      add_attachment :users, :image6
  	  add_column :users, :name, :string
  	  add_column :users, :age, :string
  	  add_column :users, :description, :text
      add_column :users, :question1, :text
      add_column :users, :question2, :text
      add_column :users, :question3, :text
      add_column :users, :question4, :text
      add_column :users, :question5, :text
      add_column :users, :question6, :text
      add_column :users, :question7, :text
      add_column :users, :question8, :text
      add_column :users, :question9, :text
      add_column :users, :question10, :text
      add_column :users, :question11, :text
      add_column :users, :question12, :text
      add_column :users, :question13, :text
      add_column :users, :question14, :text
      add_column :users, :question15, :text
      add_column :users, :question16, :text
      add_column :users, :question17, :text
      add_column :users, :question18, :text
      add_column :users, :question19, :text
      add_column :users, :question20, :text
      add_column :users, :question21, :text
    end
end
