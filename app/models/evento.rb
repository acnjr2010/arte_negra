class Evento < ActiveRecord::Base
  validates :title, :content, presence: true
  validates_length_of :title, minimum: 10, maximum: 18
  validates_length_of :content, minimum: 10, maximum: 130
end
