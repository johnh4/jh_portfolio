class HomeController < ApplicationController
  def main
  	@projects = Project.all
  	@contact_form = ContactForm.new
  end

  def contact
  	@contact_form = ContactForm.new(contact_form_params)
  	if @contact_form.valid?
  		ContactMailer.contact_me(@contact_form).deliver
	  	redirect_to(root_path, notice: "Thank you! I'll be in touch.")
  	else
  		redirect_to(root_path, notice: "Please fill-in all required fields.")
  	end
  	# respond_to do |format|
  	# 	format.js
  	# end
  end

  private
  	def contact_form_params
  		params.require(:contact_form).permit(:email, :name, :message)
  	end

end