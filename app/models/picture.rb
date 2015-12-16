class Picture < ActiveRecord::Base
  belongs_to :gallery

  has_attached_file :image,
    :path => "/images/:id/:style.:extension",
                  :url => ":s3_domain_url"

  do_not_validate_attachment_file_type :image
end
