class Tweet < ApplicationRecord
  belongs_to :user
  
  has_one_attached :image

  validates :title, presence: true
  validates :introduction, presence: true

  attribute :title, :string
  attribute :introduction, :text

end




