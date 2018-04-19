json.extract! event, :id, :judul, :tanggal, :lokasi, :keterangan, :harga, :created_at, :updated_at
json.url event_url(event, format: :json)
