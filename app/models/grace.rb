class Grace
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :day

  field :description, type: String
end
