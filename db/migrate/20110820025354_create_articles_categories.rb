class CreateArticlesCategories < ActiveRecord::Migration
  def self.up
    create_table :article_categories, :id => false do |t|
    t.references :article
    t.references :category
    end    
  end

  def self.down
    drop_table :article_categories
  end
end
