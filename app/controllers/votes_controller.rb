def create
    post = Post.find(params[:post_id])
    comment = post.comments.find(params[:comment_id]) if params[:comment_id]
  
    obj = comment || post
  
    if current_user.liked? obj
      obj.disliked_by current_user
    else
      obj.liked_by current_user
    end
  
    respond_to do |format|
      format.json { render json: { id: obj.id, type: obj.class.to_s, value: current_user.liked? obj } }
    end
  end   