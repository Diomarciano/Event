class AddNamaTicket < ActiveRecord::Migration[5.1]
  def change
  	add_column :events, :ticket, :string
  	add_column :events, :ticket1, :string
  	add_column :events, :harga1, :decimal
  	add_column :events, :ticket2, :string
  	add_column :events, :harga2, :decimal
  	add_column :events, :ticket3, :string
  	add_column :events, :harga3, :decimal
  	add_column :events, :ticket4, :string
  	add_column :events, :harga4, :decimal
  	add_column :events, :ticket5, :string
  	add_column :events, :harga5, :decimal
  	add_column :events, :ticket6, :string
  	add_column :events, :harga6, :decimal
  	add_column :events, :ticket7, :strin		
  	add_column :events, :harga7, :decimal
  end
end
