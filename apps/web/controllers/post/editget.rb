module Web::Controllers::Post
  class Editget
    include Web::Action
    expose :post_id, :post_content, :post_title, :post_topic_id

    def call(params)
      halt 401 unless UserRepository.logged_in? session

      post = PostRepository.find(params[:id])
      user = UserRepository.get_name(session[:user])

      if post.user_id == user.id
        @post_content = post.content
        @post_title = post.title
        @post_topic_id = post.topic_id
        @post_id = post.id
      else
        halt 403
      end
    end
  end
end
