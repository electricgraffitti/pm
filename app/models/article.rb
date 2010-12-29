# == Schema Information
#
# Table name: articles
#
#  id                         :integer(4)      not null, primary key
#  title                      :string(255)
#  featured                   :boolean(1)
#  banner                     :boolean(1)
#  color_box_id               :integer(4)
#  article_url                :string(255)
#  issue_id                   :integer(4)
#  created_at                 :datetime
#  updated_at                 :datetime
#  article_image_file_name    :string(255)
#  article_image_content_type :string(255)
#  article_image_file_size    :integer(4)
#  article_image_updated_at   :datetime
#
class Article < ActiveRecord::Base
  
  # Associations

  # Validations

  # Paperclip

  # Scopes
  
end


