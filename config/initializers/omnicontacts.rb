    require "omnicontacts"

    Rails.application.middleware.use OmniContacts::Builder do
			puts "hi"

    #importer :gmail, "client_id", "client_secret", {:redirect_path => "/invites/gmail/contact_callback", :ssl_ca_file => "/etc/ssl/certs/curl-ca-bundle.crt"}
    importer :gmail, "575240072417-revsedrjhht0cjpjtsu3m0vo04v830v3.apps.googleusercontent.com", "8whB5IeLfUBobDXkNbX0CFNq", {:redirect_path => "/contacts/gmail/callback",
                  # :ssl_ca_file => "/etc/ssl/certs/curl-ca-bundle.crt",
                   :max_results => 10000}

    importer :yahoo, "dj0yJmk9Y2V1WEVnOUZJYVF5JmQ9WVdrOVVrSTFUazE1TkRJbWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD1kYw--", "542bbf7b46ff2fa37542ff1111bf9668064f20ad", 
    {:callback_path => "/contacts/yahoo/callback"}

    importer :facebook, "781094515262205", "fc151a6703b53041953b6654e9a640eb", {:callback_path => "/invites/facebook/contact_callback"}

    end