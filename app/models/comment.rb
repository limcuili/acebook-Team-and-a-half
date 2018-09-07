class Comment < ApplicationRecord
  belongs_to :post, dependent: :destroy
  validates_presence_of :body
end
