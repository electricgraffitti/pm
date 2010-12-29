class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string  :title
      t.boolean :featured
      t.boolean :banner
      t.integer :color_box_id
      t.string  :article_url
      t.integer :issue_id

      t.timestamps
    end
    add_index :articles, :issue_id
    add_index :articles, :color_box_id
  end

  def self.down
    drop_table :articles
  end
end
