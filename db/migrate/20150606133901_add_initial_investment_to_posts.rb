class AddInitialInvestmentToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :initial_investment, :integer
  end
end
