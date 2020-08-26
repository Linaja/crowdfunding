package pers.llj.crowdfunding.util;

import javax.servlet.http.HttpServletRequest;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class CustomUtils {

    public static boolean isAjaxRequest(HttpServletRequest request) {
        return "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));
    }

    public static String md5(String source) {
        if (source == null)
            return null;
        try {
            StringBuilder stringBuilder = new StringBuilder();
            byte[] bytes = MessageDigest.getInstance("md5").digest(source.getBytes());
            for (byte b :bytes) {
                String hex = Integer.toHexString(b & 0xFF);
                if (hex.length() == 1)
                    stringBuilder.append("0");
                stringBuilder.append(hex);
            }
            return String.valueOf(stringBuilder).toUpperCase();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;            // 永远不会执行到这一步
        }
    }
}
