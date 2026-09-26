package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.epay.sdk.base.event.EpayEvent;
import com.netease.epay.sdk.core.EpayHelper;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

/* loaded from: classes.dex */
public class cd {
    private FragmentActivity a;
    private a b;

    /* loaded from: classes.dex */
    public interface a {
        void a();

        void b();
    }

    public cd(FragmentActivity fragmentActivity, a aVar) {
        this.a = fragmentActivity;
        this.b = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public void a(com.netease.mpay.server.response.b bVar) {
        EventBus.getDefault().register(this);
        EpayHelper.initUserByToken(bVar.a, bVar.c, bVar.j);
        EpayHelper.initPlatform(bVar.e, Long.toString(bVar.f), bVar.g);
        EpayHelper.initSession(bVar.h, Long.toString(bVar.i));
        EpayHelper.fakeUnionPay(this.a, bVar.b);
    }

    public void a(com.netease.mpay.server.response.j jVar) {
        EventBus.getDefault().register(this);
        EpayHelper.initUserByToken(jVar.a, jVar.c, jVar.k);
        EpayHelper.initPlatform(jVar.e, Long.toString(jVar.f), jVar.g);
        EpayHelper.initSession(jVar.h, Long.toString(jVar.i));
        EpayHelper.pay(this.a, jVar.b);
    }

    @Subscribe
    public void onEvent(EpayEvent epayEvent) {
        if (epayEvent != null && 1 == epayEvent.biztype && epayEvent.isSucc) {
            this.b.b();
        } else {
            this.b.a();
        }
        EventBus.getDefault().unregister(this);
    }
}
