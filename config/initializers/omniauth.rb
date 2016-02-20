Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], scope: 'public_profile', info_fields: 'id,name,link'
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET'], scope: "user,repo,gist"

  OmniAuth.config.on_failure = Proc.new do |env|
  	SessionsController.action(:auth_failure).call(env)
    # error_type = env['omniauth.error.type']
    # new_path = "#{env['SCRIPT_NAME']}#{OmniAuth.config.path_prefix}/failure?message=#{error_type}"
    # [301, {'Location' => new_path, 'Content-Type' => 'text/html'}, []]
  end
end