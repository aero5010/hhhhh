class CreateHashtagsPosts < ActiveRecord::Migration
  def change
    create_table :hashtags_posts do |t|
      t.belongs_to :post
      t.belongs_to :hashtag
    end
  end
end
