class Feature
  include Mongoid::Document

  #### IMPORTANT start ####
  ### Dont remove this as this required for memoization of features...
  include FeatureFlags::FeatureBase
  #### IMPORTANT end ####


  validates :name, presence: true

  attr_accessible :name, :status

end
