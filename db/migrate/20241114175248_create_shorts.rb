class CreateShorts < ActiveRecord::Migration[8.0]
  def change
    create_table :shorts do |t|
      t.string :for, null: false

      t.timestamps
    end
  end
end
