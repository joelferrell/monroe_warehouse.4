class WorkOrder < ActiveRecord::Base
  belongs_to :user
  has_many :parts
end
