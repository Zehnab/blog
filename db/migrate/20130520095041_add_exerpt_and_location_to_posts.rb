class AddExerptAndLocationToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :exerpt, :string
    add_column :posts, :location, :string
  end
end
