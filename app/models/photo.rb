class Photo < ActiveRecord::Base
  validates :photographer, :presence => true
  validates :datetaken, :presence => true
  validates :camera, :presence => true
  validates :details, :presence => true

  belongs_to :user
end
