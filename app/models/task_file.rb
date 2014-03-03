class TaskFile < ActiveRecord::Base
  default_scope { order('id DESC') } 
  belongs_to :task
  has_attached_file :file, {
    :styles => {
      :thumb => ["50x50#", :png],
      :medium => ["100x100#", :png],
      :large => ["300x300>", :png]
    },
    :convert_options => {
      :thumb => "-gravity Center -crop 50x50+0+0",
      :medium => "-gravity Center -crop 100x100+0+0"
    },
    :default_url => "http://dummyimage.com/50x50/cccccc/777777.png"
  } 
  validates_attachment_content_type :file, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  include Rails.application.routes.url_helpers

  def to_jq_upload
    {
      "thumbnail_url" => file.url(:thumb),
      "name" => read_attribute(:file_file_name),
      "size" => read_attribute(:file_file_size),
      "url" => file.url(:original),
      "delete_url" => task_file_path(self),
      "delete_type" => "DELETE" 
    }
  end
end
