class Video < ActiveRecord::Base
  validates :title, :video, presence: true
  validates_length_of :title, minimum: 10, maximum: 43
end
