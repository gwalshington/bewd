class Chirp < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :body
  validates :body, length: { maximum: 180 }
end
