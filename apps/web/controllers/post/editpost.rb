module Web::Controllers::Post
  class Editpost
    include Web::Action

    def call(params)
      halt 401 unless UserRepository.logged_in? session

      puts "hi"
      post = PostRepository.find(params[:id])
      user = UserRepository.get_name(session[:user])
      user_id = user.id
      if post.user_id == user_id
        topic_id = params[:post]['topic_id']
        new_title = params[:post]['title']
        new_content = params[:post]['content']

        post.content = new_content
        post.title = new_title
        puts "hi"
        PostRepository.update(post)

        redirect_to "/topics/"+topic_id
      else
        halt 403
      end


    end
  end
end
