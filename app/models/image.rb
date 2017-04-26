class Image < ActiveRecord::Base
  belongs_to :album
  attachment :file

  validates :file, :album, presence: true
end
