package com.applovin.impl;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdkUtils;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public abstract class bm extends yl implements ye.a {
    protected final com.applovin.impl.sdk.ad.b h;
    protected final u2 i;
    private AppLovinAdLoadListener j;
    private final com.applovin.impl.sdk.l k;
    private final Collection l;
    private boolean m;
    protected ExecutorService n;
    protected ExecutorService o;
    protected List p;
    protected String q;

    public interface e {
        void a(String str);
    }

    protected List e() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Caching mute images...");
        }
        ArrayList arrayList = new ArrayList();
        if (this.h.M() != null) {
            arrayList.add(a(this.h.M().toString(), new a()));
        }
        if (this.h.g0() != null) {
            arrayList.add(a(this.h.g0().toString(), new b()));
        }
        return arrayList;
    }

    void f() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Rendered new ad:" + this.h);
        }
        MaxAdFormat maxAdFormatD = this.h.getAdZone().d();
        if (((Boolean) this.a.a(sj.Y0)).booleanValue() && maxAdFormatD != null && maxAdFormatD.isFullscreenAd()) {
            this.a.g().b(this.h);
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.bm$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.i();
            }
        });
    }

    void j() {
        if (z3.f()) {
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Caching mute images...");
        }
        Uri uriA = a(this.h.M(), "mute");
        if (uriA != null) {
            this.h.b(uriA);
        }
        Uri uriA2 = a(this.h.g0(), "unmute");
        if (uriA2 != null) {
            this.h.c(uriA2);
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Ad updated with muteImageFilename = " + this.h.M() + ", unmuteImageFilename = " + this.h.g0());
        }
    }

    bm(String str, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.j jVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        super(str, jVar);
        if (bVar != null) {
            this.h = bVar;
            this.j = appLovinAdLoadListener;
            this.k = jVar.A();
            this.l = h();
            this.i = new u2();
            if (((Boolean) jVar.a(sj.I0)).booleanValue()) {
                this.q = StringUtils.isValidString(bVar.I()) ? bVar.I() : UUID.randomUUID().toString();
                this.n = jVar.i0().a("com.applovin.sdk.caching." + this.q, ((Integer) jVar.a(sj.J0)).intValue());
                this.o = jVar.i0().a("com.applovin.sdk.caching.html." + this.q, ((Integer) jVar.a(sj.K0)).intValue());
                return;
            }
            return;
        }
        throw new IllegalArgumentException("No ad specified.");
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.h.g1()) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Subscribing to timeout events...");
            }
            this.a.R().a(this);
        }
    }

    protected void k() {
        this.a.R().b(this);
        ExecutorService executorService = this.n;
        if (executorService != null) {
            executorService.shutdown();
            this.n = null;
        }
        ExecutorService executorService2 = this.o;
        if (executorService2 != null) {
            executorService2.shutdown();
            this.o = null;
        }
    }

    protected boolean l() {
        return this.m;
    }

    protected void g() {
        this.m = true;
        List list = this.p;
        if (list != null && !list.isEmpty()) {
            Iterator it = this.p.iterator();
            while (it.hasNext()) {
                ((d1) it.next()).a(true);
            }
        }
        ExecutorService executorService = this.n;
        if (executorService != null) {
            executorService.shutdown();
            this.n = null;
        }
        ExecutorService executorService2 = this.o;
        if (executorService2 != null) {
            executorService2.shutdown();
            this.o = null;
        }
    }

    protected List a(List list) {
        this.p = list;
        return this.a.i0().a(list, this.n);
    }

    class a implements f1.a {
        a() {
        }

        @Override // com.applovin.impl.f1.a
        public void a(Uri uri) {
            bm.this.h.b(uri);
            com.applovin.impl.sdk.n nVar = bm.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                bm bmVar = bm.this;
                bmVar.c.a(bmVar.b, "Ad updated with muteImageUri = " + uri);
            }
        }
    }

    class b implements f1.a {
        b() {
        }

        @Override // com.applovin.impl.f1.a
        public void a(Uri uri) {
            bm.this.h.c(uri);
            com.applovin.impl.sdk.n nVar = bm.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                bm bmVar = bm.this;
                bmVar.c.a(bmVar.b, "Ad updated with unmuteImageUri = " + uri);
            }
        }
    }

    class c implements f1.a {
        final /* synthetic */ f1.a a;

        c(f1.a aVar) {
            this.a = aVar;
        }

        @Override // com.applovin.impl.f1.a
        public void a(Uri uri) {
            if (uri != null) {
                com.applovin.impl.sdk.n nVar = bm.this.c;
                if (com.applovin.impl.sdk.n.a()) {
                    bm bmVar = bm.this;
                    bmVar.c.a(bmVar.b, "Finish caching video for ad #" + bm.this.h.getAdIdNumber() + ". Updating ad with cachedVideoURL = " + uri);
                }
                this.a.a(uri);
                return;
            }
            com.applovin.impl.sdk.n nVar2 = bm.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                bm bmVar2 = bm.this;
                bmVar2.c.b(bmVar2.b, "Failed to cache video");
            }
            bm.this.a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES);
            Bundle bundle = new Bundle();
            bundle.putLong("ad_id", bm.this.h.getAdIdNumber());
            bundle.putInt("load_response_code", bm.this.i.b());
            Throwable thA = bm.this.i.a();
            if (thA != null) {
                bundle.putString("load_exception_message", thA.getMessage());
            }
            bm.this.a.q().a(bundle, "video_caching_failed");
        }
    }

    class d implements e1.c {
        final /* synthetic */ e a;

        d(e eVar) {
            this.a = eVar;
        }

        @Override // com.applovin.impl.e1.c
        public void a(String str, boolean z) {
            if (z) {
                bm.this.a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_HTML_RESOURCES);
                return;
            }
            e eVar = this.a;
            if (eVar != null) {
                eVar.a(str);
            }
        }
    }

    Uri c(String str) {
        return c(str, this.h.Y(), true);
    }

    protected Uri b(String str) {
        return a(str, this.h.Y(), true);
    }

    protected String d(String str, List list, boolean z) {
        if (((Boolean) this.a.a(sj.z)).booleanValue()) {
            try {
                InputStream inputStreamA = this.k.a(str, list, z, this.i);
                if (inputStreamA == null) {
                    if (inputStreamA != null) {
                        inputStreamA.close();
                    }
                    return null;
                }
                try {
                    String strA = this.k.a(inputStreamA);
                    inputStreamA.close();
                    return strA;
                } catch (Throwable th) {
                    try {
                        inputStreamA.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.a(this.b, "Unknown failure to read input stream.", th3);
                }
                this.c.a(this.b, th3);
                this.a.D().a(this.b, "readInputStreamAsString", th3);
                return null;
            }
        }
        InputStream inputStreamA2 = this.k.a(str, list, z, this.i);
        if (inputStreamA2 == null) {
            return null;
        }
        try {
            String strA2 = this.k.a(inputStreamA2);
            yp.a(inputStreamA2, this.a);
            return strA2;
        } catch (Throwable th4) {
            try {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.a(this.b, "Unknown failure to read input stream.", th4);
                }
                this.a.D().a(this.b, "readInputStreamAsString", th4);
                return null;
            } finally {
                yp.a(inputStreamA2, this.a);
            }
        }
    }

    Uri c(String str, List list, boolean z) {
        if (!StringUtils.isValidString(str)) {
            return null;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Caching video " + str + "...");
        }
        String strA = this.k.a(a(), str, this.h.getCachePrefix(), list, z, this.i, this.a.A().a(str, this.h));
        if (StringUtils.isValidString(strA)) {
            File fileA = this.k.a(strA, a());
            if (fileA != null) {
                Uri uriFromFile = Uri.fromFile(fileA);
                if (uriFromFile != null) {
                    if (com.applovin.impl.sdk.n.a()) {
                        this.c.a(this.b, "Finish caching video for ad #" + this.h.getAdIdNumber() + ". Updating ad with cachedVideoFilename = " + strA);
                    }
                    return uriFromFile;
                }
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.b(this.b, "Unable to create URI from cached video file = " + fileA);
                }
                this.a.D().a(ka.Q, "extractUriFromVideoFile", (Map) CollectionUtils.hashMap("url", strA));
                return null;
            }
            if (com.applovin.impl.sdk.n.a()) {
                this.c.b(this.b, "Unable to retrieve File from cached video filename = " + strA);
            }
            this.a.D().a(ka.Q, "retrieveVideoFile", (Map) CollectionUtils.hashMap("url", strA));
            return null;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.b(this.b, "Failed to cache video: " + str);
        }
        this.a.D().a(ka.Q, "cacheVideo", (Map) CollectionUtils.hashMap("url", str));
        a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        AppLovinAdLoadListener appLovinAdLoadListener = this.j;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.adReceived(this.h);
            this.j = null;
        }
    }

    private Collection h() {
        HashSet hashSet = new HashSet();
        for (char c2 : ((String) this.a.a(sj.D0)).toCharArray()) {
            hashSet.add(Character.valueOf(c2));
        }
        hashSet.add(Character.valueOf(Typography.quote));
        return hashSet;
    }

    String b(String str, List list, boolean z) {
        InputStream inputStreamA;
        if (StringUtils.isValidString(str)) {
            Uri uri = Uri.parse(str);
            if (uri == null) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.a(this.b, "Nothing to cache, skipping...");
                }
                return null;
            }
            try {
                File fileA = this.k.a(yp.a(uri, this.h.getCachePrefix(), this.a), a());
                if (!this.k.a(fileA)) {
                    if (((Boolean) this.a.a(sj.z)).booleanValue()) {
                        try {
                            InputStream inputStreamA2 = this.k.a(str, list, z, this.i);
                            try {
                                if (inputStreamA2 != null) {
                                    this.k.a(inputStreamA2, fileA);
                                } else {
                                    if (com.applovin.impl.sdk.n.a()) {
                                        this.c.b(this.b, "Failed to load resource: " + str);
                                    }
                                    this.a.D().a(ka.Q, "cacheStringResource", (Map) CollectionUtils.hashMap("url", str));
                                }
                                if (inputStreamA2 != null) {
                                    inputStreamA2.close();
                                }
                            } catch (Throwable th) {
                                if (inputStreamA2 != null) {
                                    try {
                                        inputStreamA2.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            this.c.a(this.b, th3);
                            this.a.D().a(this.b, "cacheStringResource", th3);
                        }
                    } else {
                        try {
                            inputStreamA = this.k.a(str, list, z, this.i);
                            try {
                                if (inputStreamA != null) {
                                    this.k.a(inputStreamA, fileA);
                                } else {
                                    if (com.applovin.impl.sdk.n.a()) {
                                        this.c.b(this.b, "Failed to load resource: " + str);
                                    }
                                    this.a.D().a(ka.Q, "cacheStringResource", (Map) CollectionUtils.hashMap("url", str));
                                }
                                yp.a(inputStreamA, this.a);
                            } catch (Throwable th4) {
                                th = th4;
                                yp.a(inputStreamA, this.a);
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            inputStreamA = null;
                        }
                    }
                }
                return this.k.e(fileA);
            } catch (Throwable th6) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.a(this.b, "Resource at " + str + " failed to load.", th6);
                }
            }
        }
        return null;
    }

    private Uri a(String str, String str2) {
        File fileA = this.k.a(yp.a(Uri.parse(str2), this.h.getCachePrefix(), this.a), com.applovin.impl.sdk.j.m());
        if (fileA == null) {
            return null;
        }
        if (this.k.a(fileA)) {
            this.i.a(fileA.length());
            return Uri.parse("file://" + fileA.getAbsolutePath());
        }
        String str3 = str + str2;
        if (!this.k.a(fileA, str3, Arrays.asList(str), this.i, this.a.A().a(str3, this.h))) {
            return null;
        }
        return Uri.parse("file://" + fileA.getAbsolutePath());
    }

    protected f1 b(String str, f1.a aVar) {
        return a(str, this.h.Y(), true, aVar);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:40:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:41:0x00db  */
    /* JADX WARN: Code duplicated, block: B:43:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:46:0x0103  */
    /* JADX WARN: Instruction removed from duplicated block: B:41:0x00db, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:46:0x0103, please report this as an issue */
    String a(String str, List list, com.applovin.impl.sdk.ad.b bVar) {
        Uri uriA;
        String str2;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (!((Boolean) this.a.a(sj.E0)).booleanValue()) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Resource caching is disabled, skipping cache...");
            }
            return str;
        }
        StringBuilder sb = new StringBuilder(str);
        boolean zM0 = bVar.M0();
        List listX = bVar.X();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str3 = (String) it.next();
            int iIndexOf = 0;
            int i = 0;
            while (iIndexOf < sb.length()) {
                if (l()) {
                    return str;
                }
                iIndexOf = sb.indexOf(str3, i);
                if (iIndexOf == -1) {
                    break;
                }
                int length = sb.length();
                int i2 = iIndexOf;
                while (!this.l.contains(Character.valueOf(sb.charAt(i2))) && i2 < length) {
                    i2++;
                }
                if (i2 > iIndexOf && i2 != length) {
                    String strSubstring = sb.substring(str3.length() + iIndexOf, i2);
                    if (StringUtils.isValidString(strSubstring)) {
                        if (zM0) {
                            if (bVar.Q().equals(str3 + strSubstring)) {
                                if (com.applovin.impl.sdk.n.a()) {
                                    this.c.a(this.b, "Postponing caching for \"" + strSubstring + "\" video resource");
                                }
                            } else {
                                uriA = a(str3, strSubstring);
                                if (uriA != null) {
                                    sb.replace(iIndexOf, i2, uriA.toString());
                                    bVar.a(uriA);
                                    this.i.d();
                                } else {
                                    str2 = str3 + strSubstring;
                                    if (listX.contains(str2)) {
                                        a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_HTML_RESOURCES);
                                        this.m = true;
                                    }
                                    this.i.c();
                                    if (com.applovin.impl.sdk.n.a()) {
                                        this.c.b(this.b, "Failed to cache HTML Resource: " + str2);
                                    }
                                    this.a.D().a(ka.Q, "cacheHtmlResource", (Map) CollectionUtils.hashMap("url", str2));
                                }
                            }
                        } else {
                            uriA = a(str3, strSubstring);
                            if (uriA != null) {
                                sb.replace(iIndexOf, i2, uriA.toString());
                                bVar.a(uriA);
                                this.i.d();
                            } else {
                                str2 = str3 + strSubstring;
                                if (listX.contains(str2)) {
                                    a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_HTML_RESOURCES);
                                    this.m = true;
                                }
                                this.i.c();
                                if (com.applovin.impl.sdk.n.a()) {
                                    this.c.b(this.b, "Failed to cache HTML Resource: " + str2);
                                }
                                this.a.D().a(ka.Q, "cacheHtmlResource", (Map) CollectionUtils.hashMap("url", str2));
                            }
                        }
                    } else if (com.applovin.impl.sdk.n.a()) {
                        this.c.a(this.b, "Skip caching of non-resource " + strSubstring);
                    }
                    i = i2;
                } else {
                    if (com.applovin.impl.sdk.n.a()) {
                        this.c.b(this.b, "Unable to cache resource; ad HTML is invalid.");
                    }
                    return str;
                }
            }
        }
        return sb.toString();
    }

    Uri a(String str, List list, boolean z) {
        try {
            String strA = this.k.a(a(), str, this.h.getCachePrefix(), list, z, this.i, this.a.A().a(str, this.h));
            if (StringUtils.isValidString(strA)) {
                File fileA = this.k.a(strA, a());
                if (fileA != null) {
                    Uri uriFromFile = Uri.fromFile(fileA);
                    if (uriFromFile != null) {
                        return uriFromFile;
                    }
                    if (com.applovin.impl.sdk.n.a()) {
                        this.c.b(this.b, "Unable to extract Uri from image file");
                    }
                    this.a.D().a(ka.Q, "extractUriFromImageFile", (Map) CollectionUtils.hashMap("url", strA));
                    return null;
                }
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.b(this.b, "Unable to retrieve File from cached image filename = " + strA);
                }
                this.a.D().a(ka.Q, "retrieveImageFile", (Map) CollectionUtils.hashMap("url", strA));
                return null;
            }
            if (com.applovin.impl.sdk.n.a()) {
                this.c.b(this.b, "Failed to cache image: " + str);
            }
            this.a.D().a(ka.Q, "cacheImageResource", (Map) CollectionUtils.hashMap("url", str));
            return null;
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Failed to cache image at url = " + str, th);
            }
            this.a.D().a(this.b, "cacheImageResource", th, CollectionUtils.hashMap("url", str));
            return null;
        }
    }

    protected Uri a(Uri uri, String str) {
        if (uri == null) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "No " + str + " image to cache");
            }
            return null;
        }
        String string = uri.toString();
        if (TextUtils.isEmpty(string)) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Failed to cache " + str + " image");
            }
            return null;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Caching " + str + " image...");
        }
        return b(string);
    }

    void a(com.applovin.impl.sdk.ad.b bVar) {
        String strA = a(bVar.i0(), bVar.j0(), bVar.R0(), bVar.Y(), bVar.d1());
        if (bVar.Q0() && StringUtils.isValidString(strA)) {
            String strA2 = a(strA, bVar.Y(), bVar);
            bVar.a(strA2);
            this.c.f(this.b, "Ad updated with video button HTML assets cached = " + strA2);
        }
    }

    protected f1 a(String str, List list, boolean z, f1.a aVar) {
        if (TextUtils.isEmpty(str)) {
            if (!com.applovin.impl.sdk.n.a()) {
                return null;
            }
            this.c.a(this.b, "No video to cache, skipping...");
            return null;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Caching video " + str + "...");
        }
        return new f1(str, this.h, list, z, this.i, this.a, new c(aVar));
    }

    void a(int i) {
        if (this.j != null) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Calling back ad load failed with error code: " + i);
            }
            this.j.failedToReceiveAd(i);
            this.j = null;
        }
        g();
    }

    @Override // com.applovin.impl.ye.a
    public void a(fe feVar) {
        if (feVar.R().equalsIgnoreCase(this.h.I())) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.b(this.b, "Updating flag for timeout...");
            }
            g();
        }
        this.a.R().b(this);
    }

    String a(String str, String str2, boolean z, List list, boolean z2) {
        if (StringUtils.isValidString(str2)) {
            String strA = a(str2, z, list, z2);
            if (StringUtils.isValidString(strA)) {
                return strA;
            }
            if (TextUtils.isEmpty(str)) {
                a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_HTML_RESOURCES);
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.b(this.b, "Could not retrieve HTML from: " + str2 + " and HTML source is invalid.");
                }
                this.a.D().a(ka.Q, "retrieveHtmlString", (Map) CollectionUtils.hashMap("url", str2));
            }
        }
        return str;
    }

    private String a(String str, boolean z, List list, boolean z2) {
        if (z) {
            return b(str, list, z2);
        }
        return d(str, list, z2);
    }

    protected f1 a(String str, f1.a aVar) {
        return new f1(str, this.h, this.i, this.a, aVar);
    }

    protected e1 a(String str, List list, e eVar) {
        return new e1(str, this.h, list, this.i, this.o, this.a, new d(eVar));
    }
}
