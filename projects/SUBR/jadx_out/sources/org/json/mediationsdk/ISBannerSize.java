package org.json.mediationsdk;

import com.google.android.gms.nearby.messages.Strategy;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
public class ISBannerSize {
    private final int a;
    private final int b;
    private final String c;
    public ISContainerParams containerParams;
    private boolean d;
    public static final ISBannerSize BANNER = l.a("BANNER", 320, 50);
    public static final ISBannerSize LARGE = l.a("LARGE", 320, 90);
    public static final ISBannerSize RECTANGLE = l.a("RECTANGLE", Strategy.TTL_SECONDS_DEFAULT, IronSourceConstants.INTERSTITIAL_DAILY_CAPPED);
    protected static final ISBannerSize e = l.a();
    public static final ISBannerSize SMART = l.a("SMART", 0, 0);

    public ISBannerSize(int i, int i2) {
        this("CUSTOM", i, i2);
    }

    public ISBannerSize(String str, int i, int i2) {
        this.c = str;
        this.a = i;
        this.b = i2;
        this.containerParams = new ISContainerParams(i, i2);
    }

    public static int getMaximalAdaptiveHeight(int i) {
        return l.b(i);
    }

    public String getDescription() {
        return this.c;
    }

    public int getHeight() {
        return this.b;
    }

    public int getWidth() {
        return this.a;
    }

    public boolean isAdaptive() {
        return this.d;
    }

    public boolean isSmart() {
        return this.c.equals("SMART");
    }

    public void setAdaptive(boolean z) {
        this.d = z;
    }

    public void setContainerParams(ISContainerParams iSContainerParams) {
        if (l.a(iSContainerParams, this.a, this.b)) {
            this.containerParams = iSContainerParams;
        }
    }
}
