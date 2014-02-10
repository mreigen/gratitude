class Day
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :graces

  field :favorite, type: Mongoid::Boolean

  index({ favorite: 1 })
end
