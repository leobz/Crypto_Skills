class DeviseMailer < Devise::Mailer
    layout 'bootstrap-mailer'
    default template_path: 'devise/mailer'
  
    def devise_mail(record, action, opts = {}, &block)
      initialize_from_record(record)
      make_bootstrap_mail headers_for(action, opts), &block
    end
  end