class ExampleMailer < ApplicationMailer
default from: "twfarley88@gmail.com"

  def sample_email(email, name, menu)
   @email = email
   @name = name	
   @menu = menu

    mail(to: @email, subject: 'Meal Prep')
  end
end
