class Post < ActiveRecord::Base
	validates :idea, :presence => { :message => "Please write something." }
end
