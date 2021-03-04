class Video < ApplicationRecord
  validates :url, uniqueness: true

  def increase_view!(number = 1)
    self.views_count ||= 0
    self.views_count += number
    save!
  end
end
