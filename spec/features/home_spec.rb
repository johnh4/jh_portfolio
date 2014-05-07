require "spec_helper"

describe "Home page" do

	let!(:project) { FactoryGirl.create(:project) }
	let!(:screenshot) { FactoryGirl.create(:screenshot, project: project) }
	let(:contact_form) { FactoryGirl.build(:contact_form) }
	subject { page }

	
	describe "the navbar" do
		before { visit root_path }

		it { should have_link('work') }
		it { should have_link('about') }
		it { should have_link('contact') }
	end

	describe "the contact form" do
		before(:each) do
	    ActionMailer::Base.delivery_method = :test
	    ActionMailer::Base.perform_deliveries = true
	    ActionMailer::Base.deliveries = []
	    visit root_path
	  end
		context "with valid attributes" do
			before do
				visit root_path
				fill_in "contact_form_email",			with: "john@example.com"
				fill_in "contact_form_name",		with: "Herbert Hightower"
				fill_in "contact_form_message",		with: "Let's get together for some coffee."
				click_button "Send"
			end
			after { ActionMailer::Base.deliveries.clear }

			it "should send an email" do
				ActionMailer::Base.deliveries.count.should == 1
			end

			it "should have the correct sender" do
				ActionMailer::Base.deliveries.first.from[0].should == "john@example.com"
			end

			it "should have the correct message" do
				ActionMailer::Base.deliveries.first.body.encoded.should match("get together")
			end

			it "should have the correct name" do
				ActionMailer::Base.deliveries.first.body.encoded.should match "Herbert Hightower"
			end
		end

		context "without a sender name" do
			before do
				visit root_path
				fill_in "contact_form_email",			with: "john@example.com"
				fill_in "contact_form_name",		with: ""
				fill_in "contact_form_message",		with: "Let's get together for some coffee."
				click_button "Send"
			end

			after { ActionMailer::Base.deliveries.clear }

			it "should send an email" do
				ActionMailer::Base.deliveries.count.should == 1
			end

			it "should have the correct subject" do
				ActionMailer::Base.deliveries.first.subject.should match "unnamed visitor"
			end
		end

		context "with invalid attributes" do
			before { visit root_path }

			it "should not send an email" do
				ActionMailer::Base.deliveries.count.should == 0
			end
		end
	end
		
end