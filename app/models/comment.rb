class Comment < ApplicationRecord
  self.table_name = "comments"

  belongs_to :articles
  belongs_to :events
  belongs_to :news
end
