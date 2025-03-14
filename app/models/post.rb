# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  body       :text
#  expires_on :date
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer
#  user_id    :integer
#
# Indexes
#
#  index_posts_on_board_id  (board_id)
#  index_posts_on_user_id   (user_id)
#
class Post < ApplicationRecord
  validates(:title, presence: true)
  validates(:body, presence: true)
  validates(:expires_on, presence: true)
  
  belongs_to :board
  belongs_to :user
end
