require "httparty"
module ImportScripts
  module Powerapple
    def download_url(url)
      path = "/shared/tmp/download"
      begin
        response = HTTParty.get(url)
        File.open(path, "wb+") do |file|
          file.write response.body
        end
        path
      rescue Exception => e
        nil
      end
    end


    def download_avatar(user_id)
      size = "middle"
      "https://ucenter.powerapple.com/avatar.php?uid=#{user_id}&amp;size=#{size}"
    end
  end
end
