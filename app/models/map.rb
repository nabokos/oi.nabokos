class Map < ActiveRecord::Base
  belongs_to :creator, class_name: User.name

  validates :name,    presence: true
  validates :field,   presence: true
  validates :creator, presence: true
end
