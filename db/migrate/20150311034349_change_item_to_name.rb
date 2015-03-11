class ChangeItemToName < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.rename :item, :name
    end
  end
end
