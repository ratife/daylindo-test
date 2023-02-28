package com.daylindo.utils;

import javax.servlet.http.HttpServletRequest;

public class ToolKit {
    public static String getBaseUrl(HttpServletRequest request) {
        if ((request.getServerPort() == 80) || (request.getServerPort() == 443))
            return request.getScheme() + "://" + request.getServerName() + request.getContextPath();
        else return request.getScheme() + "://" + request.getServerName() + ":"
                + request.getServerPort() + request.getContextPath();
    }
}
