package com.applovin.impl.sdk.network;

import androidx.core.app.NotificationCompat;
import com.applovin.impl.gm;
import com.applovin.impl.sdk.EventServiceImpl;
import com.applovin.impl.sdk.j;
import com.applovin.impl.tm;
import com.applovin.impl.yl;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinPostbackService;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class PostbackServiceImpl implements AppLovinPostbackService {
    private final j a;

    public PostbackServiceImpl(j jVar) {
        this.a = jVar;
    }

    private boolean a(e eVar) {
        Map mapI = eVar.i();
        if (mapI == null) {
            return false;
        }
        Object obj = mapI.get(NotificationCompat.CATEGORY_EVENT);
        if ("postinstall".equals(obj)) {
            obj = mapI.get("sub_event");
        }
        return EventServiceImpl.ALLOW_PRE_INIT_EVENT_TYPES.contains(obj);
    }

    @Override // com.applovin.sdk.AppLovinPostbackService
    public void dispatchPostbackAsync(String str, AppLovinPostbackListener appLovinPostbackListener) {
        dispatchPostbackRequest(e.b(this.a).b(str).a(false).a(), appLovinPostbackListener);
    }

    public String toString() {
        return "PostbackService{}";
    }

    public void dispatchPostbackRequest(e eVar, tm.b bVar, AppLovinPostbackListener appLovinPostbackListener) {
        gm gmVar = new gm(eVar, bVar, this.a, appLovinPostbackListener);
        gmVar.a(a(eVar));
        this.a.i0().a((yl) gmVar, bVar);
    }

    public void dispatchPostbackRequest(e eVar, AppLovinPostbackListener appLovinPostbackListener) {
        dispatchPostbackRequest(eVar, tm.b.OTHER, appLovinPostbackListener);
    }
}
