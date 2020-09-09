module CommentsHelper
    def comments_params
        params.require(:comment).permit(:authore_name, :body)
    end
end
