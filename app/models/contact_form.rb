class ContactForm
	include ActiveModel::Model
	#include ActiveModel::Validations
  #include ActiveModel::Conversion
  #extend ActiveModel::Naming
	attr_accessor :email, :name, :message

	validates_presence_of :email, :message
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  
  def persisted?
  	false
  end

	def initialize(attributes = {})
		attributes.each do |key, value|
			send("#{key}=", value)
		end
	end
end