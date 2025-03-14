class AddUserIdToBoardsAndPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :boards, :user_id, :integer
    add_column :posts, :user_id, :integer
    
    add_index :boards, :user_id
    add_index :posts, :user_id
    add_index :posts, :board_id
  end
end 
