json.array!(@sys_table_columns) do |sys_table_column|
  json.extract! sys_table_column, :id, :tname_zn, :tname_en, :cname_zn, :cname_en, :order_no
  json.url sys_table_column_url(sys_table_column, format: :json)
end
