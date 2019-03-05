class ExampleMailer < ApplicationMailer
default from: "twfarley88@gmail.com"

  def sample_email(email, name, menu, addemails)
   @email = email
   @name = name	
   @menu = menu
   @addemails = addemails
   
	@to = @addemails.map(&:inspect).join(', ')
    mail(to: @email,bcc: @to, subject: 'Meal Prep')
  end
end
