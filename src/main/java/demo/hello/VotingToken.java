package demo.hello;

import org.springframework.web.util.WebUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.UUID;

import static java.lang.String.format;

public class VotingToken {

    private static String COOKIE_NAME = "v%d-token";
    private static String RETURN_PAGE = "voting_%d";

    private int menu;
    private String name;
    private String returnPage;

    public VotingToken(int menu) {
        this.menu = menu;
        name = String.format(COOKIE_NAME, menu);
        returnPage = String.format(RETURN_PAGE, menu);
    }

    public HttpServletResponse check(HttpServletRequest request, HttpServletResponse response) {
        Cookie cookie = WebUtils.getCookie(request, this.name);
        System.out.println(this.name + " ::　" + (null == cookie ? cookie : cookie.getValue()));
        if (null == cookie) {
            response.addCookie(new Cookie(this.name, UUID.randomUUID().toString()));
        }
        return response;
    }

    public String getReturnPage() {
        return this.returnPage;
    }


}
