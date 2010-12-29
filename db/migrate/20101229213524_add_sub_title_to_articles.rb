class AddSubTitleToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :sub_title, :string
    add_column :articles, :content, :text
  end

  def self.down
    remove_column :articles, :content
    remove_column :articles, :sub_title
  end
end
