require "spec_helper"

describe "Home page" do

	subject { page }

	describe "the navbar" do
		before { visit root_path }

		it { should have_link('work') }
		it { should have_link('about') }
		it { should have_link('contact') }

	end
		
end