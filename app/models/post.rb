class Post < ApplicationRecord
  belongs_to :user
  has_rich_text :content

  def tag_list
    tags.split(',').map(&:strip) if tags.present?
  end
end
