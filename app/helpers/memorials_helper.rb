module MemorialsHelper
    def memorial_image_path(memorial)
      asset = memorial.asset
      asset.present? ? "/assets/images/assets/#{asset.url}" : "/assets/images/57ad5dfa-810f-4d45-90ea-cb067784b5d1.png"
    end
end
