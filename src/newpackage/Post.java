package newpackage;

import javax.servlet.jsp.tagext.JspTag;
import java.util.Date;
import java.util.concurrent.atomic.AtomicReference;

public class Post {
    int post_id;
    String title;
    String content;
    int user_id;
    int helper_uid;
    int status;
    String creationdate;



    //public Post(String title, String content, int user_id, String creationdate) {
    //}

    public Post(int post_id, String title, String content,int user_id,int helper_uid, int status,String creationdate)
    {
        this.post_id=post_id;
        this.title= title;
        this.content=content;
        this.user_id=user_id;
        this.helper_uid=helper_uid;
        this.status= status;
        this.creationdate=creationdate;
    }

    public Post(String title, String content, int user_id)
    {
        this.title= title;
        this.content=content;
        this.user_id=user_id;
    }

    public int getPost_id()
    {
        return post_id;
    }

    public void setPost_id(int post_id)
    {
        this.post_id=post_id;
    }

    public String getTitle()
    {
        return title;
    }

    public void setTitle(String title)
    {
        this.title=title;
    }

    public String getContent()
    {
        return content;
    }

    public void setContent(String content)
    {
        this.content=content;
    }


    public int getUser_id()
    {
        return user_id;
    }

    public void setUser_id(int user_id)
    {
        this.user_id=user_id;
    }



}