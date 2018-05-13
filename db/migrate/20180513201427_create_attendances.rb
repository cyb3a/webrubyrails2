class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.string :name
      t.text :comment
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
