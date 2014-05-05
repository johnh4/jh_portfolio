class Screenshot < ActiveRecord::Base
  belongs_to :project
  validates :filename, presence: true
end
