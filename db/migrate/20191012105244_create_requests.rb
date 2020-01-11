class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.text :requester
      t.text :title
      t.text :user

      t.timestamps
    end
  end
end
