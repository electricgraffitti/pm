# == Schema Information
#
# Table name: issues
#
#  id                       :integer(4)      not null, primary key
#  title                    :string(255)
#  created_at               :datetime
#  updated_at               :datetime
#  issue_cover_file_name    :string(255)
#  issue_cover_content_type :string(255)
#  issue_cover_file_size    :integer(4)
#  issue_cover_updated_at   :datetime
#
class Issue < ActiveRecord::Base
  
  # Associations

  # Validations

  # Paperclip

  # Scopes
  
end


