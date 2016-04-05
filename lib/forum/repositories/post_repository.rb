class PostRepository
  include Hanami::Repository

  def self.by_topic(topic_id)
    query do
      where(topic_id: topic_id)
    end.all
  end
end
