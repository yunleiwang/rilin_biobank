class CreateContainerTypes < ActiveRecord::Migration
  def change
    create_table :container_types do |t|
      t.string :container_catalog
      t.string :container_icon
      t.string :alia_name
      t.string :add_link_url

      t.timestamps null: false
    end
  end
end
