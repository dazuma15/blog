class Album < ActiveRecord::Base
  has_many :photos, dependent: :destroy
  validates :title, presence: true
end
