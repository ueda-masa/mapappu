class AddRegionToTweets < ActiveRecord::Migration[7.0]
  def change
    add_column :tweets, :region, :string
  end
end
