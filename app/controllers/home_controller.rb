class HomeController < ApplicationController

  def index
  end

  def after_authantication_create
    #auth = request.env['omniauth.auth']
    response = HTTParty.post("https://login.bigcommerce.com/oauth2/token",
     {:body => { "client_id" => 'a796d7nwww8fz77h3l4qhp7axsn8bpe',
     "client_secret" => '7ahfar8emr3apilvvx2j1kehbsnksng',
     "code" => params[:code], "scope" => params[:scope],
     "grant_type" => "authorization_code", "redirect_uri" => "https://bigcommerce.pagekite.me/auth/bigcommerce/callback",
     "context" => params[:context]}.to_json,
     :headers => { 'Content-Type' => 'application/json' }
     })
     flash[:error] = "#{response.body} ----- #{params}"
  end

end