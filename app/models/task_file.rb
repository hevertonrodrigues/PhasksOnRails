class TaskFile < ActiveRecord::Base
  default_scope { order('id DESC') } 
  belongs_to :task
  has_attached_file :file, {
    :styles => lambda { |a| content_type_images.include?( a.content_type ) ? { 
        :thumb => ["50x50#", :png],
        :medium => ["100x100#", :png],
        :large => ["300x300>", :png]
      } : {}  
    },
    :convert_options => {
      :thumb => "-gravity Center -crop 50x50+0+0",
      :medium => "-gravity Center -crop 100x100+0+0"
    },
    :default_url => "http://dummyimage.com/50x50/cccccc/777777.png"
  }
  validates_attachment_content_type :file, :content_type => /.*/

  # Inclue helpers para model
  include Rails.application.routes.url_helpers

  # Hash para retorno do json do jquery upload
  def to_jq_upload
    {
      "thumbnail_url" => if TaskFile.content_type_images.include?( file.content_type ) then file.url(:thumb) else file_icon( file ) end ,
      "name" => read_attribute(:file_file_name),
      "size" => read_attribute(:file_file_size),
      "url" => file.url(:original),
      "delete_url" => task_file_path(self),
      "delete_type" => "DELETE" 
    }
  end

  # Retorna icon do arquivo
  def file_icon(file, size = "50x50")
    extension = File.extname(file.url)[1..-1]
    "http://dummyimage.com/#{size}/cccccc/777777.png&text=#{extension}"
  end

  # Retorna content-types de imagens apenas (metodo estatico)
  def self.content_type_images
    ["image/jpeg", "image/jpg", "image/png", "image/gif"]
  end
end
