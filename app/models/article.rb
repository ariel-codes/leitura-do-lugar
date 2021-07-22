class Article < ApplicationRecord
  attribute :markdown
  attribute :rendered

  has_many_media
  belongs_to :owner, polymorphic: true

  def truncated
    markdown.gsub(/[*_^\[\]#]/i, ' ').squish.truncate_words(10)
  end
end
