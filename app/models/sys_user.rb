class SysUser < ActiveRecord::Base
  belongs_to :sys_role
end
