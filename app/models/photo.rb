class Photo < ActiveRecord::Base
  include Paperclip::Glue
  validates :photographer, :presence => true
  validates :datetaken, :presence => true
  validates :camera, :presence => true
  validates :details, :presence => true

  belongs_to :user

  has_attached_file :image, styles: { :large => "1200x1200>", :thumb => "150x150#", :medium => "300x300#" }
  # , :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def self.text_search(query)
    if query.present?
      where("photographer @@ :q or details @@ :q", q: query)
    end
  end
end
