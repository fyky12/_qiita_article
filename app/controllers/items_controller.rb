class ItemsController < ApplicationController
  def index
    #require 'net/http'
    require 'open-uri'

    access_token = ""

    headers = {'Authorization' => "Bearer #{access_token}"}

    uri = URI.parse("https://qiita.com/api/v2/authenticated_user")
    res = URI.open(uri, headers)

    @result = JSON.parse(res.read)

    p @result
  end
end
