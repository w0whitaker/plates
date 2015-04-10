class Image < ActiveRecord::Base
	mount_uploader :plate, PlateUploader
end
