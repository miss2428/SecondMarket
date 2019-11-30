package service;

import model.Comments;

import java.util.List;

public interface CommentsService {
    public List<Comments> queryByArticle(int aid);

    public List<Comments> queryByUser(int uid);
    public Comments addComment(int aid, int uid, String contents);
}
