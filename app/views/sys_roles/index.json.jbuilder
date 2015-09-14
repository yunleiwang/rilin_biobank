json.array!(@sys_roles) do |sys_role|
  json.extract! sys_role, :id, :name, :remark
  json.url sys_role_url(sys_role, format: :json)
end
