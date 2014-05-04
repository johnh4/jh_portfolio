FactoryGirl.define do
	factory :project do
		sequence(:url) { |n| "www.site#{n}.com" }
		sequence(:name) { |n| "Site Number #{n}"}
		sequence(:description) { |n| "Site description #{n}" }
	end

	factory :screenshot do
		sequence(:filename) { |n| "Filename #{n}" }
	end
end