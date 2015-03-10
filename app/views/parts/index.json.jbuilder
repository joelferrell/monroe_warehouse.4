json.array!(@parts) do |part|
  json.extract! part, :id, :part_number, :part_description, :unit_price, :unit_quantity, :parts_total, :work_order_id
  json.url part_url(part, format: :json)
end
