class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :place
      t.string :date

      t.timestamps
    end
  end
end
