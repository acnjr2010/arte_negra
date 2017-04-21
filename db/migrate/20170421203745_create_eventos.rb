class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :title
      t.string :content

      t.timestamps null: false
    end
  end
end
