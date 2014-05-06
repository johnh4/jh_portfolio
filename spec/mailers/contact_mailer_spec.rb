require "spec_helper"

describe ContactMailer do
  describe "contact_me" do
    let(:contact_form) { FactoryGirl.build(:contact_form) }
    let(:mail) { ContactMailer.contact_me(contact_form) }

    it "renders the headers" do
      mail.subject.should eq("Portfolio lead")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["jehowl4@gmail.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
