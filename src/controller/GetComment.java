package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

public class GetComment extends RequestHandler
{
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response)
    {
        String destination = "index.jsp";
        List<String> comments = this.getComment(5);
        String articleNmbrStr = request.getParameter("commentNmbr");
        int commentNmbr = Integer.parseInt(articleNmbrStr);
        if(!(comments.get(commentNmbr - 1) == null))
        {
            destination = "comment" + (commentNmbr) + ".jsp";
        }

        return destination;
    }

    private List<String> getComment(int length)
    {
        List<String> comments = new ArrayList<>();

        for(int i = 0; i < 5; i++)
        {
            String iStr = "" + i;
            comments.add(iStr);
        }

        return comments;
    }
}
