class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_attached_file :photo, :styles => { :small => "300x300>", :large => "500x500>", :mobile => "1000x1000>" }
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates_attachment_content_type :photo, :content_type => /\Aimage/
end
