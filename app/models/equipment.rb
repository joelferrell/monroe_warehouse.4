class Equipment < ActiveRecord::Base
  belongs_to :work_order
  has_many :parts
end
