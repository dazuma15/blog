class Photo < ActiveRecord::Base
  belongs_to :album
  
  has_attached_file :upload, :storage => :s3, :bucket => 'paisleythroughalens', :s3_credentials => { :access_key_id => 'AKIAJOBCA4KG6XNWDUVQ', :secret_access_key => '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'}, :styles => { :small => "300x300>", :large => "500x500>", :mobile => "1000x1000>" }
  validates_attachment_content_type :upload, :content_type => /\Aimage\/.*\Z/
end
