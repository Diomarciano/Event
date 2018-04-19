class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :judul
      t.datetime :tanggal
      t.string :lokasi
      t.string :keterangan
      t.decimal :harga

      t.timestamps
    end
  end
end
