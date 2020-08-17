class CboMailer < ApplicationMailer
    default from: 'confirmations@4ct-card.org'
 
    def en_intake_email
      @user = params[:user]
      @url  = 'http://example.com/login'
      mail(to: @user.email,
           subject: 'Welcome to My Awesome Site',
           template_path: 'notifications',
           template_name: 'another')
    end

    def sp_intake_email
      @user = params[:user]
      @url  = 'http://example.com/login'
      mail(to: @user.email,
           subject: 'Welcome to My Awesome Site',
           template_path: 'notifications',
           template_name: 'another')
    end
  end
end
