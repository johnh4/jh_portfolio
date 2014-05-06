require "spec_helper"

describe ContactMailer do
  describe "contact_me" do
    let(:contact_form) { FactoryGirl.build(:contact_form) }
    let(:mail) { ContactMailer.contact_me(contact_form) }

    it "renders the headers" do
      mail.subject.should match(contact_form.subject)
      mail.subject.should match("Portfolio:")
      mail.from.should eq([contact_form.email])
      mail.to.should eq(["jehowl4@gmail.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match(contact_form.message)
    end
  end

end
