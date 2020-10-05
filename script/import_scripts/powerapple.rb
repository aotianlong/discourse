module ImportScripts
  module Powerapple


    def discuzx_avatar_fullpath(uid)
      filename = download_avatar(uid)
      if filename
        [filename, 'avatar.jpg']
      end
    end

    def download_url(url)
      puts "downloading: #{url}"
      path = "/tmp/download"
      begin
        Timeout.timeout 20.seconds do
          response = HTTParty.get(url)
          File.open(path, "wb+") do |file|
            file.write response.body
          end
          path
        end
      rescue Exception => e
        puts e.message
        nil
      end
    end


    def download_avatar(user_id)
      size = "middle"
      url = "https://ucenter.powerapple.com/avatar.php?uid=#{user_id}&amp;size=#{size}"
      download_url url
    end


    def download_post_attach(post)
    end


  end
end
