module ApplicationHelper
    def localized_name(memorial_id)
      localize_data = LocalizeData.find_by(id: memorial_id)
      localize_data&.en || "Unknown Memorial"
    end
end
