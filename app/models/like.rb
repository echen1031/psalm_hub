class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :song

  #validations
  validates :user_id, presence: true
end
