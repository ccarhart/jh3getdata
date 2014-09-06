# Connecting to GitHub
# Client ID: d28ebc13f828f559bb1e
# Client Secret: 50238420f4f4e4105967154ce8bdccb6f36efed1

library(httr)
oauth_endpoints("github")
myapp <- oauth_app("github", "d28ebc13f828f559bb1e")


# 3. Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# 4. Use API
req <- GET("https://api.github.com/rate_limit", config(token = github_token))
stop_for_status(req)
content(req)