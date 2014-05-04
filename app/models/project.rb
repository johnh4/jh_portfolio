class Project < ActiveRecord::Base
	validates :url, :name, :description, presence: true
	has_many :screenshots, dependent: :destroy
end
