class Project < ActiveRecord::Base
	validates :url, :name, :description, presence: true
end
