class CreateBlogPosts < ActiveRecord::Migration[7.1]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :content
      t.string :invoke
      t.string :active_record

      t.timestamps
    end
  end
end
