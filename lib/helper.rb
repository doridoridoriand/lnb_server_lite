require 'open-uri'
require 'json'

module Helper
  def all_prefectures
    JSON.parse(open(Base::ALL_PREFECTURES).read)
  end

  def json_data
    JSON.parse(open("#{Base::API_BASE_URL}#{self}").read)
  end
end
