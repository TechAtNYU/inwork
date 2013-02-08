class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :title
      t.string :ad_target_url
      t.string :alt_text

      t.timestamps
    end
  end
end
