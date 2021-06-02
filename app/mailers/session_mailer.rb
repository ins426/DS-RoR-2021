class SessionMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def login_email
    @administrador = params[:administrador]
    @url  = 'http://example.com/login'
    mail(to: @administrador.email, subject: 'Notificación de acceso')
  end
end
