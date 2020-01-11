class CreateTPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :t_posts do |t|
      t.text :title
      t.text :comment
      t.text :user

      t.timestamps
    end
  end
end
