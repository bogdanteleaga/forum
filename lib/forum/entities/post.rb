class Post
  include Hanami::Entity
  attributes :title, :user_id, :content, :topic_id
end
