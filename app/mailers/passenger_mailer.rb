class PassengerMailer < ApplicationMailer
    def welcome_email(passenger)
        @user = passenger
        mail(to: @user.email, subject: 'Welcome Email')
    end

end
