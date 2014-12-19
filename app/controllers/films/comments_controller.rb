class Films::CommentsController < CommentsController
  before_action :set_commentable

  private

    def set_commentable
      @commentable = Film.find(params[:film_id])
    end
end
