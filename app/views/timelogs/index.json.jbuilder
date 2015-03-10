json.array!(@timelogs) do |timelog|
  json.extract! timelog, :id, :rate, :date, :nature_work, :hours_worked, :equipment_id, :total, :employee, :work_order_id
  json.url timelog_url(timelog, format: :json)
end
