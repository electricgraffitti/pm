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
  has_many :articles

  # Validations
  validates_presence_of :title, :on => :create, :message => "can't be blank"
  validates_uniqueness_of :title, :on => :create, :message => "must be unique"
  
  # PaperClip
  has_attached_file :issue_cover,
    :styles => { :banner => "470x320>", :small => "200x136>", :thumb => "100x68>"},
    :url => "/issue_covers/:id/:style_:basename.:extension",
    :path => ":rails_root/public/issue_covers/:id/:style_:basename.:extension"
    
  # Scopes
  
end


