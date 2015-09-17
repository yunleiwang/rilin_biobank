json.array!(@menu_libs) do |menu_lib|
  json.extract! menu_lib, :id, :name_zh, :menu_lib_id, :link, :seq
  json.url menu_lib_url(menu_lib, format: :json)
end
