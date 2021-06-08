class Comment < ActiveRecord::Base
  has_many :ratings, as: :rateable
  belongs_to :article
end
