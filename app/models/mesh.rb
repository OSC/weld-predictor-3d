class Mesh < ActiveRecord::Base
  has_attached_file :inputfile
  validates_presence_of :inputfile
  do_not_validate_attachment_file_type :inputfile

  def stl_files
    YAML.load(super)
  end
end

