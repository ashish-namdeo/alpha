class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string    :title
      t.belongs_to :article
      t.belongs_to :news
      t.belongs_to :event

      t.timestamps
    end
  end
end
