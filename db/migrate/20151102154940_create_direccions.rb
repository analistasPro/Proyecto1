class CreateDireccions < ActiveRecord::Migration
  def change
    create_table :direccions do |t|
      t.string :calle
      t.integer :numero
      t.string :comuna
      t.string :cuidad
      t.string :pais
      t.references :usuarios, index: true

      t.timestamps
    end
  end
end
