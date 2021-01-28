class CreateMunicipalities < ActiveRecord::Migration[6.0]
  def change
    create_table :municipalities do |t|
      t.string :prefecture_no
      t.string :prefecture_name
      t.string :muni_cd
      t.string :muni_name

      t.timestamps
    end
  end
end
