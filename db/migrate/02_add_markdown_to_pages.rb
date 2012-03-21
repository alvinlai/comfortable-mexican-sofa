class AddMarkdownToPages < ActiveRecord::Migration
  
  def self.up
  	add_column :cms_pages, :markdown_enabled, :boolean, :default => false
  end

  def self.down
  	remove_column :cms_pages, :markdown_enabled
  end
end