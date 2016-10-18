class Url < ActiveRecord::Base

  def self.expand(short_url)
    id = short_url.to_i(36)
    
    find(id)
  end

  def shorten
    id.to_s(36)
  end

end
