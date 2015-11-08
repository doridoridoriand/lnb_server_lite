require 'bundler'
Bundler.require

$: << File.expand_path(File.join(__FILE__, 'lib'))
require 'lib/base'
require 'lib/helper'

class Router < Sinatra::Base
  include Base
  include Helper

  configure do
    set :root, File.expand_path(File.join(__FILE__, '..', 'static'))
    set :environment, :development
    set :port, 3000
  end

  # トップページ
  get '/' do
    erb :index
  end

  # newsのページ(都道府県個別のページではない)
  ['/news', '/news/'].map {|route|
    get route do
    end
  }

  # weatherのページ(市町村個別のページではない)
  ['/weather', '/weather/'].map {|route|
    get route do
    end
  }

  # newsの個別ページ
  get '/news/:prefecture_id' do
  end

  # weatherの個別ページ
  get 'weather/:city_id' do
  end
end
