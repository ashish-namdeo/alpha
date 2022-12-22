class CreateArticle < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :book_name
      t.belongs_to :user

      t.timestamps
    end
  end
end
