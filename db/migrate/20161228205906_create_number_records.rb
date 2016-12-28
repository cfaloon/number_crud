class CreateNumberRecords < ActiveRecord::Migration
  def change
    create_table :number_records do |t|
      t.integer :value

      t.timestamps null: false
    end
  end
end
