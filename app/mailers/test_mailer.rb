class TestMailer < ApplicationMailer
  default from: 'admin@appalachio.com'

  def hello
    mail(
      subject: 'Hello from Postmark',
      to: 'admin@appalachio.com',
      from: 'admin@appalachio.com',
      html_body: '<strong>Hello</strong> dear Postmark user.',
      track_opens: 'true',
      message_stream: 'outbound')
  end
end
