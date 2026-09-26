package com.netease.cloud.nos.android.ssl;

import android.content.Context;
import com.netease.cloud.nos.android.utils.LogUtil;
import java.io.InputStream;
import java.security.KeyStore;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* loaded from: classes.dex */
public class SSLCustomSocketFactory extends SSLSocketFactory {
    private static final String KEY_PASS = "";
    private static final String LOGTAG = LogUtil.makeLogTag(SSLCustomSocketFactory.class);

    public SSLCustomSocketFactory(KeyStore trustStore) throws Throwable {
        super(trustStore);
    }

    public static SSLSocketFactory getSocketFactory(Context context) {
        try {
            InputStream ins = context.getResources().openRawResource(0);
            KeyStore trustStore = KeyStore.getInstance(KeyStore.getDefaultType());
            try {
                trustStore.load(ins, "".toCharArray());
                ins.close();
                return new SSLCustomSocketFactory(trustStore);
            } catch (Throwable th) {
                ins.close();
                throw th;
            }
        } catch (Throwable e) {
            LogUtil.d(LOGTAG, "ssl socket factory exception", e);
            return null;
        }
    }
}
