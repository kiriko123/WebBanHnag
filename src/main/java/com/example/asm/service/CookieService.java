package com.example.asm.service;

import java.util.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Service
public class CookieService {
    @Autowired
    private HttpServletRequest request;
    
    @Autowired
    private HttpServletResponse response;

    /**
     * Thêm một cookie vào phản hồi HTTP.
     *
     * @param name     Tên của cookie
     * @param value    Giá trị của cookie
     * @param maxAge   Thời gian sống tối đa của cookie (tính bằng giây)
     * @param encoded  Nếu true, giá trị sẽ được mã hóa Base64
     * @return Đối tượng Cookie được tạo
     */
    public Cookie add(String name, String value, int maxAge, boolean encoded) {
        if (encoded) {
            value = Base64.getEncoder().encodeToString(value.getBytes());
        }
        Cookie cookie = new Cookie(name, value);
        cookie.setMaxAge(maxAge);
        cookie.setPath("/");
        response.addCookie(cookie);
        return cookie;
    }

    /**
     * Xóa một cookie bằng cách đặt thời gian sống của nó là 0.
     *
     * @param name Tên của cookie
     */
    public void remove(String name) {
        this.add(name, "", 0, true);
    }

    /**
     * Lấy một cookie từ yêu cầu HTTP.
     *
     * @param name Tên của cookie
     * @return Đối tượng Cookie nếu tìm thấy, ngược lại là null
     */
    public Cookie get(String name) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equalsIgnoreCase(name)) {
                    return cookie;
                }
            }
        }
        return null;
    }

    /**
     * Lấy giá trị của cookie từ yêu cầu HTTP.
     *
     * @param name Tên của cookie
     * @return Giá trị của cookie nếu tìm thấy, ngược lại là null
     */
    public String getValue(String name) {
        return this.getValue(name, false);
    }

    /**
     * Lấy giá trị của cookie từ yêu cầu HTTP và giải mã nếu cần.
     *
     * @param name     Tên của cookie
     * @param decoded  Nếu true, giá trị sẽ được giải mã Base64
     * @return Giá trị của cookie nếu tìm thấy, ngược lại là null
     */
    public String getValue(String name, boolean decoded) {
        Cookie cookie = this.get(name);
        if (cookie != null) {
            String value = cookie.getValue();
            if (decoded) {
                value = new String(Base64.getDecoder().decode(value));
            }
            return value;
        }
        return null;
    }
}
