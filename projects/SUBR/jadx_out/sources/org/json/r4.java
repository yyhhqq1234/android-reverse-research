package org.json;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001c\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/ironsource/r4;", "Lcom/ironsource/a2;", "Lcom/ironsource/y1;", NotificationCompat.CATEGORY_EVENT, "", "b", "", "", "", "a", "Lcom/ironsource/g5;", "Lcom/ironsource/g5;", "auctionData", "<init>", "(Lcom/ironsource/g5;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class r4 implements a2 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final g5 auctionData;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[y1.values().length];
            try {
                iArr[y1.LOAD_AD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[y1.LOAD_AD_SUCCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[y1.LOAD_AD_FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[y1.LOAD_AD_FAILED_WITH_REASON.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[y1.AUCTION_SUCCESS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[y1.AUCTION_FAILED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[y1.AUCTION_FAILED_NO_CANDIDATES.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[y1.LOAD_AD_NO_FILL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[y1.AD_OPENED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[y1.AD_CLOSED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[y1.SHOW_AD.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[y1.SHOW_AD_FAILED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[y1.AD_CLICKED.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[y1.AD_REWARDED.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[y1.RELOAD_AD_FAILED_WITH_REASON.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[y1.RELOAD_AD_SUCCESS.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[y1.AD_LEFT_APPLICATION.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            a = iArr;
        }
    }

    public r4(g5 auctionData) {
        Intrinsics.checkNotNullParameter(auctionData, "auctionData");
        this.auctionData = auctionData;
    }

    private final boolean b(y1 event) {
        switch (a.a[event.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
                return true;
            default:
                return false;
        }
    }

    @Override // org.json.a2
    public Map<String, Object> a(y1 event) {
        Intrinsics.checkNotNullParameter(event, "event");
        HashMap map = new HashMap();
        JSONObject jSONObjectH = this.auctionData.h();
        if (jSONObjectH.length() > 0) {
            map.put("genericParams", jSONObjectH);
        }
        if (b(event)) {
            map.put(IronSourceConstants.AUCTION_TRIALS, Integer.valueOf(this.auctionData.i()));
            if (!TextUtils.isEmpty(this.auctionData.f())) {
                map.put(IronSourceConstants.AUCTION_FALLBACK, this.auctionData.f());
            }
        }
        if (!TextUtils.isEmpty(this.auctionData.g())) {
            map.put("auctionId", this.auctionData.g());
        }
        return map;
    }
}
