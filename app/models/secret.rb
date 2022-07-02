class Secret < ApplicationRecord
  validates :title, presence: true, length: {maximum:75}
  validates :content, presence: true, length: {maximum: 750}
  

  belongs_to :user
end
