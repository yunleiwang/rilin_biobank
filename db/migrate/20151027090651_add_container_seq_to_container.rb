class AddContainerSeqToContainer < ActiveRecord::Migration
  def change
    add_column :containers, :container_seq, :string
  end
end
