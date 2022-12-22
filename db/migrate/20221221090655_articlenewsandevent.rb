class Articlenewsandevent < ActiveRecord::Migration[7.0]
  def change
    create_table :commets do |t|
      t.string    :title
      t.belongs_to :article
      t.belongs_to :news
      t.belongs_to :event
    end
  end
end
