class AddColumnToArticlesComments < ActiveRecord::Migration[7.0]
  def change
    add_column :article_comments, :full_address, :string
  end
end
