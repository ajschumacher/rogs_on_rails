class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.text :entry
      t.timestamps
    end
  end
end
