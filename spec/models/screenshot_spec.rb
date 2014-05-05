require 'spec_helper'

describe Screenshot do

	let(:project) { FactoryGirl.create(:project) }
	subject(:screenshot) { FactoryGirl.create(:screenshot, project: project) }

	it { should respond_to :filename }
	it { should respond_to :project }

	it { should belong_to :project }
	its(:project) { should == project }

	it { should validate_presence_of :filename }

	describe "adding a file" do
		before { screenshot.update(filename: 'new_file') }
		its(:filename) { should eq('new_file') }
	end
  
end
