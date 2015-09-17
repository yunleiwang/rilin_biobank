class MenuLib < ActiveRecord::Base
  has_many :children_menu_libs, class_name: 'MenuLib', foreign_key: :menu_lib_id, :dependent => :destroy
  belongs_to :menu_lib, class_name: 'MenuLib'

  def first_level_menu_lib_id
    if self.menu_lib.menu_lib_id==-1
      self.id
    else
      self.menu_lib.first_level_menu_lib_id
    end
  end
end
