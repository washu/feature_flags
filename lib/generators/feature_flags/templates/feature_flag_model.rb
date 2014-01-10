class Feature
  include Mongoid::Document
  include Mongoid::Timestamps
  #### IMPORTANT start ####
  ### Dont remove this as this required for memoization of features...
  include FeatureFlags::FeatureBase
  #### IMPORTANT end ####
  field :name, type: String
  field :status, type: Boolean

  validates :name, presence: true

  attr_accessible :name, :status
  index({name:-1})
end
