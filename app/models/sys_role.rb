class SysRole < ActiveRecord::Base
  has_many :sys_users, dependent: :destroy
end
