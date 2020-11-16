class RemoveServiceReferencesFromReviewTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :service_id
  end
end
