class PostSummarySerializer < ActiveModel::Serializer
  attributes :posts

  def posts
      "title": "#{self.object.title}",
      "short_content": "#{self.object.content[0..39]}..."
  end

end
