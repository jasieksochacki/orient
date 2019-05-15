class ChangeLimitOnRouteName < ActiveRecord::Migration[5.2]
  def change
    change_column(:routes, :name, :string, limit: 80)
  end
end
