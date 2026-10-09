package org.json;

import android.app.Activity;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class m implements mu {
    private WeakReference<Activity> a;

    public m(Activity activity) {
        this.a = new WeakReference<>(activity);
    }

    @Override // org.json.mu
    public void a() {
        Activity activity = this.a.get();
        if (activity != null) {
            activity.requestWindowFeature(1);
        }
    }
}
