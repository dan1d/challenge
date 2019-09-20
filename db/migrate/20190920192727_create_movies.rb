class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false, index: true
      t.date :release_date, null: false

      t.timestamps
    end
  end
end
