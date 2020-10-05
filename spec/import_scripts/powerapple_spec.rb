require "rails_helper"
load Rails.root.join("script/import_scripts/powerapple.rb")

RSpec.describe ImportScripts::Powerapple do

  describe "download_url" do
    it do
      klass = Class.new do
        include ImportScripts::Powerapple
      end
      klass.new.download_url "http://www.baidu.com"
    end
  end

end
