package im.yixin.sdk.channel;

import im.yixin.algorithm.MD5;
import im.yixin.sdk.util.YixinConstants;

/* loaded from: classes.dex */
public final class YXMessageUtil {
    private YXMessageUtil() {
    }

    public static byte[] generateCheckSum(String protocolData, String contextPackageName) {
        StringBuffer localStringBuffer = new StringBuffer(50);
        if (protocolData != null) {
            localStringBuffer.append(protocolData);
        }
        localStringBuffer.append(10000L);
        localStringBuffer.append(contextPackageName);
        localStringBuffer.append(YixinConstants.SDK_MSG_SEND_CHECK_SUM_SALT);
        return MD5.getMessageDigest(localStringBuffer.toString().substring(1, 9).getBytes()).getBytes();
    }

    public static boolean isBlank(String str) {
        return str == null || str.trim().length() < 1;
    }
}
