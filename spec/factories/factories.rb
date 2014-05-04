FactoryGirl.define do
	factory :project do
		sequence(:url) { |n| "www.site#{n}.com" }
		sequence(:name) { |n| "Site Number #{n}"}
		sequence(:description) { |n| "Site description #{n}" }
	end
end