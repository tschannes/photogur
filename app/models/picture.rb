# == Schema Information
#
# Table name: pictures
#
#  id         :integer          not null, primary key
#  artist     :string(255)
#  title      :string(255)
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Picture < ActiveRecord::Base
	validates :artist, presence: true
	validates :title, presence: true
	validates :url, presence: true
end
