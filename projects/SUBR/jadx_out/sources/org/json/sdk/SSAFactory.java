package org.json.sdk;

import android.app.Activity;
import android.content.Context;
import org.json.bq;
import org.json.si;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class SSAFactory {
    public static bq getPublisherInstance(Activity activity) throws Exception {
        return si.a((Context) activity);
    }

    public static bq getPublisherTestInstance(Activity activity, int i) throws Exception {
        return si.a(activity, i);
    }
}
