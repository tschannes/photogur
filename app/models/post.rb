class Post < ActiveRecord::Base
	
	belongs_to :user
	validates :user_id, presence: true
	validates :content, presence: true
	validates :title, presence: true, length: { maximum: 30 }
	validates :lead, presence: true , length: { maximum: 140 }
	default_scope order: 'posts.created_at DESC'

end
