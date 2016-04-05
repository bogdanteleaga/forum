module Web::Controllers::Post
  class Delete
    include Web::Action

    def call(params)
      halt 401 unless UserRepository.logged_in? session

      post = PostRepository.find(params[:id])
      user = UserRepository.get_name(session[:user])

      if post.user_id == user.id
        topic_id = post.topic_id
        PostRepository.delete(post)
        redirect_to '/topics/' + topic_id.to_s
      else
        halt 403
      end
    end
  end
end
