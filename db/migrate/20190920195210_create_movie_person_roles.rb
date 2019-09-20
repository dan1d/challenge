class CreateMoviePersonRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_person_roles do |t|
      t.references :person, index: true, null: false
      t.references :movie, index: true, null: false
      t.integer :role_type, null: false, index: true
      
      t.timestamps
    end
  end
end
