    require "omnicontacts"

    Rails.application.middleware.use OmniContacts::Builder do
			puts "hi"

    #importer :gmail, "client_id", "client_secret", {:redirect_path => "/invites/gmail/contact_callback", :ssl_ca_file => "/etc/ssl/certs/curl-ca-bundle.crt"}
    importer :gmail, "575240072417-revsedrjhht0cjpjtsu3m0vo04v830v3.apps.googleusercontent.com", "8whB5IeLfUBobDXkNbX0CFNq", {:redirect_path => "/contacts/gmail/callback",
                  # :ssl_ca_file => "/etc/ssl/certs/curl-ca-bundle.crt",
                   :max_results => 10000}

    importer :yahoo, "dj0yJmk9QnpLdlRLQlhTd1NEJmQ9WVdrOVRXTmtWVWxLTm1jbWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD04Zg--", "29fd62afa1325b343d43367bbf79ef8673cde0f5", 
    {:callback_path => "/contacts/yahoo/callback"}
    
    importer :hotmail, "000000004C12B841", "GCGzeQhnjAfSpkdws9f4JQ-AdeJzOrrq"

    importer :facebook, "781094515262205", "fc151a6703b53041953b6654e9a640eb"#, {:callback_path => "/invites/facebook/contact_callback"}

    end