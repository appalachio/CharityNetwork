class ApplicationMailer < ActionMailer::Base
  default from: "notifications@appalachio.dev"
  layout "mailer"
end
