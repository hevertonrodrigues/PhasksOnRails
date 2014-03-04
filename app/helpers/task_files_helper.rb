module TaskFilesHelper
  def task_file_file_preview(task_file, size = "50x50")
    if TaskFile.content_type_images.include?( task_file.file.content_type ) then
      image_size = if size == "50x50" then :thumb else :medium end
      link_to (image_tag task_file.file(image_size), :class => 'img-thumbnail img-responsive'), task_file.file(:original), :class => 'lightbox'
    else
      link_to (image_tag task_file.file_icon( task_file.file, size ), :class => 'img-thumbnail img-responsive'), task_file.file(:original), :download => task_file.file_file_name, :target => "_blank"
    end
  end
end