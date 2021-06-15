module MarkdownArticleConcern
  extend ActiveSupport::Concern

  class_methods do
    def has_markdown_article
      class_eval do
        has_one :article, as: :owner, dependent: :delete, autosave: true, required: true
        accepts_nested_attributes_for :article
        delegate :markdown, :rendered, to: :article, allow_nil: true, prefix: true
      end
    end
  end
end