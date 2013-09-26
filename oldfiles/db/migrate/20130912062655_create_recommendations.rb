class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :product_id

      t.timestamps
    end
  end
end
