class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.bigint 'list_id', null: false
      t.text 'comment'
      t.integer 'rating'
      t.timestamps
      t.index ['list_id'], name: 'index_reviews_on_list_id'
    end
  end
end
