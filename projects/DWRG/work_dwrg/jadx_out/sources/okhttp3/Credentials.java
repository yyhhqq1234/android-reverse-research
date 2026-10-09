package okhttp3;

import com.netease.download.Const;
import java.nio.charset.Charset;
import okhttp3.internal.Util;
import okio.ByteString;

/* loaded from: classes.dex */
public final class Credentials {
    private Credentials() {
    }

    public static String basic(String userName, String password) {
        return basic(userName, password, Util.ISO_8859_1);
    }

    public static String basic(String userName, String password, Charset charset) {
        String usernameAndPassword = userName + Const.RESP_CONTENT_SPIT2 + password;
        String encoded = ByteString.encodeString(usernameAndPassword, charset).base64();
        return "Basic " + encoded;
    }
}
