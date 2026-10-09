package org.json;

import android.content.Context;
import java.util.Map;
import org.json.mediationsdk.model.InterstitialPlacement;
import org.json.mediationsdk.model.Placement;

/* JADX INFO: loaded from: classes3.dex */
public interface wi extends fl, gh {
    void a(Context context, boolean z);

    void a(Map<String, String> map);

    void a(boolean z);

    String b(Context context);

    void b();

    void c();

    void d();

    boolean e(String str);

    InterstitialPlacement g(String str);

    void h(String str);

    Placement i(String str);
}
