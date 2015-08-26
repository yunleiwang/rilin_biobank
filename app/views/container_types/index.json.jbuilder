json.array!(@container_types) do |container_type|
  json.extract! container_type, :id, :container_catalog, :container_icon, :alia_name, :add_link_url
  json.url container_type_url(container_type, format: :json)
end
