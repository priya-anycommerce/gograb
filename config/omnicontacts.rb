    require "omnicontacts"

    Rails.application.middleware.use OmniContacts::Builder do
			puts "hiiiiii"

    importer :gmail, "575240072417-revsedrjhht0cjpjtsu3m0vo04v830v3.apps.googleusercontent.com", "8whB5IeLfUBobDXkNbX0CFNq", {:redirect_path => "/contacts/gmail/callback",
                   :ssl_ca_file => "/etc/ssl/certs/curl-ca-bundle.crt",
                   :max_results => 10000}

    #importer :yahoo, "consumer_id", "consumer_secret", {:callback_path => "/invites/yahoo/contact_callback"}

    importer :facebook, "781094515262205", "fc151a6703b53041953b6654e9a640eb", {:callback_path => "/invites/index"}

    end