require "spec_helper"

describe ContactForm do

	context "with a blank" do
		describe "message" do
			let(:bad_contact) { FactoryGirl.build(:contact_form, message: "") }
		
			it "validates presence of message" do
				bad_contact.should_not be_valid
			end		
		end
		describe "subject" do
			let(:bad_contact) { FactoryGirl.build(:contact_form, subject: "") }
		
			it "validates presence of subject" do
				bad_contact.should_not be_valid
			end		
		end
		describe "email" do
			let(:bad_contact) { FactoryGirl.build(:contact_form, email: "") }
		
			it "validates presence of email" do
				bad_contact.should_not be_valid
			end		
		end
		describe "or incorrectly formatted email" do
			let(:bad_contact) { FactoryGirl.build(:contact_form, email: "johnme") }
		
			it "validates format of email" do
				bad_contact.should_not be_valid
			end		
		end
	end
	
end