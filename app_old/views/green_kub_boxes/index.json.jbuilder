json.array!(@green_kub_boxes) do |green_kub_box|
  json.extract! green_kub_box, :id
  json.url green_kub_box_url(green_kub_box, format: :json)
end
