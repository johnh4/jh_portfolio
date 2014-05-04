require 'spec_helper'

describe Project do
  
	subject(:project) { FactoryGirl.create(:project) }

	it { should respond_to(:url) }
	it { should respond_to(:name) }
	it { should respond_to(:description) }

	it { should validate_presence_of(:url) }
	it { should validate_presence_of(:name) }
	it { should validate_presence_of(:description) }

	it { should have_many(:screenshots) }

	describe "can have screenshots added" do
		let(:screenshot) { FactoryGirl.create(:screenshot, project: project) }
		let(:screenshot_2) { FactoryGirl.create(:screenshot, project: project) }

		its(:screenshots) { should include(screenshot) }
		its(:screenshots) { should include(screenshot_2) }
	end
end
