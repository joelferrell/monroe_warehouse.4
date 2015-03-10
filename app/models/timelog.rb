class Timelog < ActiveRecord::Base
  belongs_to :equipment
  belongs_to :work_order
end
