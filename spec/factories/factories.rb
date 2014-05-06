FactoryGirl.define do
	factory :project do
		sequence(:url) { |n| "www.site#{n}.com" }
		sequence(:name) { |n| "Site Number #{n}"}
		sequence(:description) { |n| "Site description #{n}" }
	end

	factory :screenshot do
		sequence(:filename) { |n| "Filename #{n}" }
		project
	end

	factory :contact_form do
		subject		"Nice Portfolio!"
		email			"employer@example.com"
		message		"I like what I see, hit me back."			
	end
end