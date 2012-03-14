class CreateContenidos < ActiveRecord::Migration
  def self.up
    create_table :contenidos do |t|
      t.text :texto
      t.string :imagen
      t.references :articulo

      t.timestamps
    end
  end

  def self.down
    drop_table :contenidos
  end
end
