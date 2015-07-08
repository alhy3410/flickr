class Photo < ActiveRecord::Base
  include Paperclip::Glue
  validates :photographer, :presence => true
  validates :datetaken, :presence => true
  validates :camera, :presence => true
  validates :details, :presence => true

  belongs_to :user

  has_attached_file :image, styles: { :large => "600x600>", :thumb => "150x150#" }
  # , :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
