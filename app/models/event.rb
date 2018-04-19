class Event < ApplicationRecord

	belongs_to :user, optional: true

	has_attached_file :image, styles: {
	    thumb: '100x100>',
	    square: '200x200#',
	    medium: '300x300>',
	    large: '600x600>'
  	}

    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

    validates :judul, :tanggal, :lokasi, presence: true


    
end
