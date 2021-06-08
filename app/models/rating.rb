class Rating < ActiveRecord::Base
  belongs_to :rateable, polymorphic: true
  scope :upvotes, -> { where('rateable_value = 1') }
  scope :downvotes, -> {where("rateable_value = '-1'") }
end
