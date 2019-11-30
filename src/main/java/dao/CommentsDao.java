package dao;

import model.Comments;

import java.util.List;

public interface CommentsDao {

    public List<Comments> queryByArticle(int uid);

    public List<Comments> queryByUser(int uid);

    public int addComment(Comments c);
}
