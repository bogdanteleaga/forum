module Web::Controllers::Topics
  class Create
    include Web::Action

    def call(params)
      title = params[:topic]['title']
      category = params[:topic]['category']

      if UserRepository.logged_in? session
        TopicRepository.create(Topic.new title: title, category: category)
        redirect_to '/topics'
      end
    end
  end
end
