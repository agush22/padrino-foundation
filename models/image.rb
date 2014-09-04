class Image < Sequel::Model
  many_to_one :project
  mount_uploader :file, ImageUploader
end
