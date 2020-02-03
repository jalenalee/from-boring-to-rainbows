class AddUserIdTitleContentCategoryIdTaggingIdDate < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title 
      t.text :content 
      t.datetime :date
    end
  end
end
