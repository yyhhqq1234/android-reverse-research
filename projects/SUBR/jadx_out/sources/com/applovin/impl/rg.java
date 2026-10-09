package com.applovin.impl;

import android.text.TextUtils;
import android.webkit.WebView;
import com.applovin.impl.sdk.utils.StringUtils;
import com.iab.omid.library.applovin.adsession.AdSession;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.CreativeType;
import com.iab.omid.library.applovin.adsession.ImpressionType;
import com.iab.omid.library.applovin.adsession.Owner;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import com.iab.omid.library.applovin.adsession.media.InteractionType;
import com.iab.omid.library.applovin.adsession.media.MediaEvents;
import com.iab.omid.library.applovin.adsession.media.Position;
import com.iab.omid.library.applovin.adsession.media.VastProperties;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class rg extends lg {
    static final /* synthetic */ boolean p = true;
    private final aq h;
    private final AtomicBoolean i;
    private MediaEvents j;
    private final VastProperties k;
    private final AtomicBoolean l;
    private final AtomicBoolean m;
    private final AtomicBoolean n;
    private final AtomicBoolean o;

    public rg(aq aqVar) {
        super(aqVar);
        this.i = new AtomicBoolean();
        this.l = new AtomicBoolean();
        this.m = new AtomicBoolean();
        this.n = new AtomicBoolean();
        this.o = new AtomicBoolean();
        this.h = aqVar;
        float fS1 = aqVar.s1();
        if (aqVar.s1() == -1) {
            this.k = VastProperties.createVastPropertiesForNonSkippableMedia(true, Position.STANDALONE);
        } else {
            this.k = VastProperties.createVastPropertiesForSkippableMedia(fS1, true, Position.STANDALONE);
        }
    }

    @Override // com.applovin.impl.lg
    protected AdSessionConfiguration a() {
        try {
            CreativeType creativeType = CreativeType.VIDEO;
            ImpressionType impressionType = ImpressionType.BEGIN_TO_RENDER;
            Owner owner = Owner.NATIVE;
            return AdSessionConfiguration.createAdSessionConfiguration(creativeType, impressionType, owner, owner, false);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.d, "Failed to create ad session configuration", th);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p() {
        this.g.loaded(this.k);
    }

    @Override // com.applovin.impl.lg
    public void h() {
        b("track loaded", new Runnable() { // from class: com.applovin.impl.rg$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.p();
            }
        });
    }

    public void b(final float f, final boolean z) {
        if (this.l.compareAndSet(false, true)) {
            b("track started", new Runnable() { // from class: com.applovin.impl.rg$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(f, z);
                }
            });
        }
    }

    public void x() {
        if (this.m.compareAndSet(false, true)) {
            b("track first quartile", new Runnable() { // from class: com.applovin.impl.rg$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.o();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        this.j.firstQuartile();
    }

    public void y() {
        if (this.n.compareAndSet(false, true)) {
            b("track midpoint", new Runnable() { // from class: com.applovin.impl.rg$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.q();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q() {
        this.j.midpoint();
    }

    public void C() {
        if (this.o.compareAndSet(false, true)) {
            b("track third quartile", new Runnable() { // from class: com.applovin.impl.rg$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.u();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u() {
        this.j.thirdQuartile();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n() {
        this.j.complete();
    }

    public void w() {
        b("track completed", new Runnable() { // from class: com.applovin.impl.rg$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.n();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r() {
        this.j.pause();
    }

    public void z() {
        b("track paused", new Runnable() { // from class: com.applovin.impl.rg$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.r();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s() {
        this.j.resume();
    }

    public void A() {
        b("track resumed", new Runnable() { // from class: com.applovin.impl.rg$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.s();
            }
        });
    }

    public void j() {
        if (this.i.compareAndSet(false, true)) {
            b("buffer started", new Runnable() { // from class: com.applovin.impl.rg$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.l();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        this.j.bufferStart();
    }

    public void i() {
        if (this.i.compareAndSet(true, false)) {
            b("buffer finished", new Runnable() { // from class: com.applovin.impl.rg$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.k();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        this.j.bufferFinish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t() {
        this.j.skipped();
    }

    public void B() {
        b("track skipped", new Runnable() { // from class: com.applovin.impl.rg$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.t();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m() {
        this.j.adUserInteraction(InteractionType.CLICK);
    }

    public void v() {
        b("track clicked", new Runnable() { // from class: com.applovin.impl.rg$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(float f, boolean z) {
        this.j.start(f, z ? 0.0f : 1.0f);
    }

    public void b(final boolean z) {
        b("track volume changed", new Runnable() { // from class: com.applovin.impl.rg$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z) {
        this.j.volumeChange(z ? 0.0f : 1.0f);
    }

    @Override // com.applovin.impl.lg
    protected void a(AdSession adSession) {
        try {
            this.j = MediaEvents.createMediaEvents(adSession);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.d, "Failed to create media events", th);
            }
        }
    }

    @Override // com.applovin.impl.lg
    protected AdSessionContext a(WebView webView) {
        VerificationScriptResource verificationScriptResourceCreateVerificationScriptResourceWithoutParameters;
        if (!p && this.h.k1() == null) {
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList();
        for (bq bqVar : this.h.k1().b()) {
            List<hq> listC = bqVar.c();
            if (listC.isEmpty()) {
                mq.a(bqVar.b(), fq.FAILED_TO_LOAD_RESOURCE, this.b);
            } else {
                ArrayList arrayList2 = new ArrayList();
                for (hq hqVar : listC) {
                    if ("omid".equalsIgnoreCase(hqVar.b())) {
                        arrayList2.add(hqVar);
                    }
                }
                if (arrayList2.isEmpty()) {
                    mq.a(bqVar.b(), fq.API_FRAMEWORK_OR_LANGUAGE_TYPE_NOT_SUPPORTED, this.b);
                } else {
                    ArrayList<URL> arrayList3 = new ArrayList();
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        try {
                            arrayList3.add(new URL(((hq) it.next()).c()));
                        } catch (Throwable th) {
                            if (com.applovin.impl.sdk.n.a()) {
                                this.c.a(this.d, "Failed to parse JavaScript resource url", th);
                            }
                        }
                    }
                    if (arrayList3.isEmpty()) {
                        mq.a(bqVar.b(), fq.FAILED_TO_LOAD_RESOURCE, this.b);
                    } else {
                        String strE = bqVar.e();
                        String strD = bqVar.d();
                        if (StringUtils.isValidString(strE) && !StringUtils.isValidString(strD)) {
                            mq.a(bqVar.b(), fq.FAILED_TO_LOAD_RESOURCE, this.b);
                        } else {
                            for (URL url : arrayList3) {
                                if (StringUtils.isValidString(strE)) {
                                    verificationScriptResourceCreateVerificationScriptResourceWithoutParameters = VerificationScriptResource.createVerificationScriptResourceWithParameters(strD, url, strE);
                                } else {
                                    verificationScriptResourceCreateVerificationScriptResourceWithoutParameters = VerificationScriptResource.createVerificationScriptResourceWithoutParameters(url);
                                }
                                arrayList.add(verificationScriptResourceCreateVerificationScriptResourceWithoutParameters);
                            }
                        }
                    }
                }
            }
        }
        String strA = this.b.V().a();
        if (TextUtils.isEmpty(strA)) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.b(this.d, "JavaScript SDK content not loaded successfully");
            }
            return null;
        }
        try {
            return AdSessionContext.createNativeAdSessionContext(this.b.V().b(), strA, arrayList, this.h.getOpenMeasurementContentUrl(), this.h.getOpenMeasurementCustomReferenceData());
        } catch (Throwable th2) {
            if (!com.applovin.impl.sdk.n.a()) {
                return null;
            }
            this.c.a(this.d, "Failed to create ad session context", th2);
            return null;
        }
    }
}
