package com.netease.download.httpdns2;

import com.netease.download.Const;
import com.netease.download.downloader.DownloadInitInfo;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;

/* loaded from: classes.dex */
public class HttpDnsUtil {
    public static String getHttpdnsServicesIp() {
        return Const.WS_HTTP_DNS_REQ_URL;
    }

    public static String getEdgeNodeIpUrl(String ip) {
        StringBuffer url = new StringBuffer();
        url.append("https://").append(ip).append("?ws_domain=edge.httpdns.com&ws_ret_type=json&ws_cli_IP=").append(DownloadInitInfo.getInstances().getLocalIp());
        return url.toString();
    }

    public static String getHttpdnsDomain2IpUrl(String ip, String domain) {
        StringBuffer url = new StringBuffer();
        url.append("https://").append(ip).append("/v1/?domain=").append(domain);
        return url.toString();
    }

    public static String getHttpdnsFinalResUrl(String pDomain) {
        StringBuffer sb = new StringBuffer();
        sb.append("https://").append(pDomain).append("?ws_domain=").append(pDomain).append("&ws_cli_IP=").append(DownloadInitInfo.getInstances().getLocalIp());
        return sb.toString();
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
