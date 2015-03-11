class AddCompleteToTasks < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.boolean :complete, default: false
    end
  end
end
