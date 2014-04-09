# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "public/uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process :resize_to_fit => [600, 600]

  version :thumb do
    process :resize_to_fill => [150,150]
  end

end
