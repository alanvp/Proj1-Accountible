class UserMailer < ActionMailer::Base
  default from: "Accountible@gmail.com"

    def invite_email(user, email)
      @user = user
      mail(to: email, subject: 'Invitation to Accountible')
      binding.pry
    end
end
