class CreateSysUsers < ActiveRecord::Migration
  def change
    create_table :sys_users do |t|
      t.string :username
      t.string :password
      t.string :gender
      t.date :birthday
      t.integer :department_id
      t.integer :role_id

      t.timestamps null: false
    end
  end
end
