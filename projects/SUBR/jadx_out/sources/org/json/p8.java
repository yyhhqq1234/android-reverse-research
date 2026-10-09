package org.json;

import com.onesignal.notifications.internal.bundle.impl.NotificationBundleProcessor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\u0005BO\b\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0015\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u001a\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u001e\u0012\b\u0010&\u001a\u0004\u0018\u00010#¢\u0006\u0004\b'\u0010(J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0019\u0010\u000f\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0011\u0010\u0013R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00158\u0006¢\u0006\f\n\u0004\b\r\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0019\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u001b\u001a\u0004\b\u000b\u0010\u001cR\u0019\u0010\"\u001a\u0004\u0018\u00010\u001e8\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001f\u001a\u0004\b \u0010!R\u0019\u0010&\u001a\u0004\u0018\u00010#8\u0006¢\u0006\f\n\u0004\b \u0010$\u001a\u0004\b\u0005\u0010%¨\u0006)"}, d2 = {"Lcom/ironsource/p8;", "", "", "toString", "Lcom/ironsource/tp;", "a", "Lcom/ironsource/tp;", "f", "()Lcom/ironsource/tp;", "rewardedVideoConfigurations", "Lcom/ironsource/ji;", "b", "Lcom/ironsource/ji;", "d", "()Lcom/ironsource/ji;", "interstitialConfigurations", "Lcom/ironsource/r6;", "c", "Lcom/ironsource/r6;", "()Lcom/ironsource/r6;", "bannerConfigurations", "Lcom/ironsource/ol;", "Lcom/ironsource/ol;", "e", "()Lcom/ironsource/ol;", "nativeAdConfigurations", "Lcom/ironsource/x3;", "Lcom/ironsource/x3;", "()Lcom/ironsource/x3;", "applicationConfigurations", "Lcom/ironsource/jt;", "Lcom/ironsource/jt;", "g", "()Lcom/ironsource/jt;", "testSuiteSettings", "Lcom/ironsource/d1;", "Lcom/ironsource/d1;", "()Lcom/ironsource/d1;", "adQualityConfigurations", "<init>", "(Lcom/ironsource/tp;Lcom/ironsource/ji;Lcom/ironsource/r6;Lcom/ironsource/ol;Lcom/ironsource/x3;Lcom/ironsource/jt;Lcom/ironsource/d1;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class p8 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final tp rewardedVideoConfigurations;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final ji interstitialConfigurations;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final r6 bannerConfigurations;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final ol nativeAdConfigurations;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final x3 applicationConfigurations;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final jt testSuiteSettings;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private final d1 adQualityConfigurations;

    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b \b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b<\u0010=J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\u0006\u0010\u0004\u001a\u00020\u0012J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0010HÆ\u0003J]\u0010\u0004\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÆ\u0001J\t\u0010\u001a\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001c\u001a\u00020\u001bHÖ\u0001J\u0013\u0010\u001f\u001a\u00020\u001e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b\u000f\u0010#R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010$\u001a\u0004\b%\u0010&\"\u0004\b\u000f\u0010'R$\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010(\u001a\u0004\b)\u0010*\"\u0004\b\u000f\u0010+R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010,\u001a\u0004\b-\u0010.\"\u0004\b\u000f\u0010/R$\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u00100\u001a\u0004\b1\u00102\"\u0004\b\u000f\u00103R$\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u00104\u001a\u0004\b5\u00106\"\u0004\b\u0004\u00107R$\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u00108\u001a\u0004\b9\u0010:\"\u0004\b\u000f\u0010;¨\u0006>"}, d2 = {"Lcom/ironsource/p8$a;", "", "Lcom/ironsource/tp;", "rewardedVideoConfigurations", "a", "Lcom/ironsource/ji;", "interstitialConfigurations", "Lcom/ironsource/r6;", "bannerConfigurations", "Lcom/ironsource/ol;", "nativeAdConfigurations", "Lcom/ironsource/x3;", "applicationConfigurations", "Lcom/ironsource/jt;", "testSuiteSettings", "b", "Lcom/ironsource/d1;", "adQualityConfigurations", "Lcom/ironsource/p8;", "c", "d", "e", "f", "g", "h", "", "toString", "", "hashCode", "other", "", "equals", "Lcom/ironsource/tp;", "n", "()Lcom/ironsource/tp;", "(Lcom/ironsource/tp;)V", "Lcom/ironsource/ji;", "l", "()Lcom/ironsource/ji;", "(Lcom/ironsource/ji;)V", "Lcom/ironsource/r6;", "k", "()Lcom/ironsource/r6;", "(Lcom/ironsource/r6;)V", "Lcom/ironsource/ol;", "m", "()Lcom/ironsource/ol;", "(Lcom/ironsource/ol;)V", "Lcom/ironsource/x3;", "j", "()Lcom/ironsource/x3;", "(Lcom/ironsource/x3;)V", "Lcom/ironsource/jt;", NotificationBundleProcessor.PUSH_MINIFIED_BUTTONS_LIST, "()Lcom/ironsource/jt;", "(Lcom/ironsource/jt;)V", "Lcom/ironsource/d1;", "i", "()Lcom/ironsource/d1;", "(Lcom/ironsource/d1;)V", "<init>", "(Lcom/ironsource/tp;Lcom/ironsource/ji;Lcom/ironsource/r6;Lcom/ironsource/ol;Lcom/ironsource/x3;Lcom/ironsource/jt;Lcom/ironsource/d1;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final /* data */ class a {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private tp rewardedVideoConfigurations;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        private ji interstitialConfigurations;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata */
        private r6 bannerConfigurations;

        /* JADX INFO: renamed from: d, reason: from kotlin metadata */
        private ol nativeAdConfigurations;

        /* JADX INFO: renamed from: e, reason: from kotlin metadata */
        private x3 applicationConfigurations;

        /* JADX INFO: renamed from: f, reason: from kotlin metadata */
        private jt testSuiteSettings;

        /* JADX INFO: renamed from: g, reason: from kotlin metadata */
        private d1 adQualityConfigurations;

        public a() {
            this(null, null, null, null, null, null, null, WorkQueueKt.MASK, null);
        }

        public a(tp tpVar, ji jiVar, r6 r6Var, ol olVar, x3 x3Var, jt jtVar, d1 d1Var) {
            this.rewardedVideoConfigurations = tpVar;
            this.interstitialConfigurations = jiVar;
            this.bannerConfigurations = r6Var;
            this.nativeAdConfigurations = olVar;
            this.applicationConfigurations = x3Var;
            this.testSuiteSettings = jtVar;
            this.adQualityConfigurations = d1Var;
        }

        public /* synthetic */ a(tp tpVar, ji jiVar, r6 r6Var, ol olVar, x3 x3Var, jt jtVar, d1 d1Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : tpVar, (i & 2) != 0 ? null : jiVar, (i & 4) != 0 ? null : r6Var, (i & 8) != 0 ? null : olVar, (i & 16) != 0 ? null : x3Var, (i & 32) != 0 ? null : jtVar, (i & 64) != 0 ? null : d1Var);
        }

        public static /* synthetic */ a a(a aVar, tp tpVar, ji jiVar, r6 r6Var, ol olVar, x3 x3Var, jt jtVar, d1 d1Var, int i, Object obj) {
            if ((i & 1) != 0) {
                tpVar = aVar.rewardedVideoConfigurations;
            }
            if ((i & 2) != 0) {
                jiVar = aVar.interstitialConfigurations;
            }
            ji jiVar2 = jiVar;
            if ((i & 4) != 0) {
                r6Var = aVar.bannerConfigurations;
            }
            r6 r6Var2 = r6Var;
            if ((i & 8) != 0) {
                olVar = aVar.nativeAdConfigurations;
            }
            ol olVar2 = olVar;
            if ((i & 16) != 0) {
                x3Var = aVar.applicationConfigurations;
            }
            x3 x3Var2 = x3Var;
            if ((i & 32) != 0) {
                jtVar = aVar.testSuiteSettings;
            }
            jt jtVar2 = jtVar;
            if ((i & 64) != 0) {
                d1Var = aVar.adQualityConfigurations;
            }
            return aVar.a(tpVar, jiVar2, r6Var2, olVar2, x3Var2, jtVar2, d1Var);
        }

        public final a a(d1 adQualityConfigurations) {
            this.adQualityConfigurations = adQualityConfigurations;
            return this;
        }

        public final a a(ji interstitialConfigurations) {
            this.interstitialConfigurations = interstitialConfigurations;
            return this;
        }

        public final a a(ol nativeAdConfigurations) {
            this.nativeAdConfigurations = nativeAdConfigurations;
            return this;
        }

        public final a a(r6 bannerConfigurations) {
            this.bannerConfigurations = bannerConfigurations;
            return this;
        }

        public final a a(tp rewardedVideoConfigurations) {
            this.rewardedVideoConfigurations = rewardedVideoConfigurations;
            return this;
        }

        public final a a(tp rewardedVideoConfigurations, ji interstitialConfigurations, r6 bannerConfigurations, ol nativeAdConfigurations, x3 applicationConfigurations, jt testSuiteSettings, d1 adQualityConfigurations) {
            return new a(rewardedVideoConfigurations, interstitialConfigurations, bannerConfigurations, nativeAdConfigurations, applicationConfigurations, testSuiteSettings, adQualityConfigurations);
        }

        public final a a(x3 applicationConfigurations) {
            this.applicationConfigurations = applicationConfigurations;
            return this;
        }

        public final p8 a() {
            return new p8(this.rewardedVideoConfigurations, this.interstitialConfigurations, this.bannerConfigurations, this.nativeAdConfigurations, this.applicationConfigurations, this.testSuiteSettings, this.adQualityConfigurations, null);
        }

        public final void a(jt jtVar) {
            this.testSuiteSettings = jtVar;
        }

        public final a b(jt testSuiteSettings) {
            this.testSuiteSettings = testSuiteSettings;
            return this;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final tp getRewardedVideoConfigurations() {
            return this.rewardedVideoConfigurations;
        }

        public final void b(d1 d1Var) {
            this.adQualityConfigurations = d1Var;
        }

        public final void b(ji jiVar) {
            this.interstitialConfigurations = jiVar;
        }

        public final void b(ol olVar) {
            this.nativeAdConfigurations = olVar;
        }

        public final void b(r6 r6Var) {
            this.bannerConfigurations = r6Var;
        }

        public final void b(tp tpVar) {
            this.rewardedVideoConfigurations = tpVar;
        }

        public final void b(x3 x3Var) {
            this.applicationConfigurations = x3Var;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final ji getInterstitialConfigurations() {
            return this.interstitialConfigurations;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final r6 getBannerConfigurations() {
            return this.bannerConfigurations;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final ol getNativeAdConfigurations() {
            return this.nativeAdConfigurations;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof a)) {
                return false;
            }
            a aVar = (a) other;
            return Intrinsics.areEqual(this.rewardedVideoConfigurations, aVar.rewardedVideoConfigurations) && Intrinsics.areEqual(this.interstitialConfigurations, aVar.interstitialConfigurations) && Intrinsics.areEqual(this.bannerConfigurations, aVar.bannerConfigurations) && Intrinsics.areEqual(this.nativeAdConfigurations, aVar.nativeAdConfigurations) && Intrinsics.areEqual(this.applicationConfigurations, aVar.applicationConfigurations) && Intrinsics.areEqual(this.testSuiteSettings, aVar.testSuiteSettings) && Intrinsics.areEqual(this.adQualityConfigurations, aVar.adQualityConfigurations);
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final x3 getApplicationConfigurations() {
            return this.applicationConfigurations;
        }

        /* JADX INFO: renamed from: g, reason: from getter */
        public final jt getTestSuiteSettings() {
            return this.testSuiteSettings;
        }

        /* JADX INFO: renamed from: h, reason: from getter */
        public final d1 getAdQualityConfigurations() {
            return this.adQualityConfigurations;
        }

        public int hashCode() {
            tp tpVar = this.rewardedVideoConfigurations;
            int iHashCode = (tpVar == null ? 0 : tpVar.hashCode()) * 31;
            ji jiVar = this.interstitialConfigurations;
            int iHashCode2 = (iHashCode + (jiVar == null ? 0 : jiVar.hashCode())) * 31;
            r6 r6Var = this.bannerConfigurations;
            int iHashCode3 = (iHashCode2 + (r6Var == null ? 0 : r6Var.hashCode())) * 31;
            ol olVar = this.nativeAdConfigurations;
            int iHashCode4 = (iHashCode3 + (olVar == null ? 0 : olVar.hashCode())) * 31;
            x3 x3Var = this.applicationConfigurations;
            int iHashCode5 = (iHashCode4 + (x3Var == null ? 0 : x3Var.hashCode())) * 31;
            jt jtVar = this.testSuiteSettings;
            int iHashCode6 = (iHashCode5 + (jtVar == null ? 0 : jtVar.hashCode())) * 31;
            d1 d1Var = this.adQualityConfigurations;
            return iHashCode6 + (d1Var != null ? d1Var.hashCode() : 0);
        }

        public final d1 i() {
            return this.adQualityConfigurations;
        }

        public final x3 j() {
            return this.applicationConfigurations;
        }

        public final r6 k() {
            return this.bannerConfigurations;
        }

        public final ji l() {
            return this.interstitialConfigurations;
        }

        public final ol m() {
            return this.nativeAdConfigurations;
        }

        public final tp n() {
            return this.rewardedVideoConfigurations;
        }

        public final jt o() {
            return this.testSuiteSettings;
        }

        public String toString() {
            return "Builder(rewardedVideoConfigurations=" + this.rewardedVideoConfigurations + ", interstitialConfigurations=" + this.interstitialConfigurations + ", bannerConfigurations=" + this.bannerConfigurations + ", nativeAdConfigurations=" + this.nativeAdConfigurations + ", applicationConfigurations=" + this.applicationConfigurations + ", testSuiteSettings=" + this.testSuiteSettings + ", adQualityConfigurations=" + this.adQualityConfigurations + ')';
        }
    }

    private p8(tp tpVar, ji jiVar, r6 r6Var, ol olVar, x3 x3Var, jt jtVar, d1 d1Var) {
        this.rewardedVideoConfigurations = tpVar;
        this.interstitialConfigurations = jiVar;
        this.bannerConfigurations = r6Var;
        this.nativeAdConfigurations = olVar;
        this.applicationConfigurations = x3Var;
        this.testSuiteSettings = jtVar;
        this.adQualityConfigurations = d1Var;
    }

    public /* synthetic */ p8(tp tpVar, ji jiVar, r6 r6Var, ol olVar, x3 x3Var, jt jtVar, d1 d1Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(tpVar, jiVar, r6Var, olVar, x3Var, jtVar, d1Var);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final d1 getAdQualityConfigurations() {
        return this.adQualityConfigurations;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final x3 getApplicationConfigurations() {
        return this.applicationConfigurations;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final r6 getBannerConfigurations() {
        return this.bannerConfigurations;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final ji getInterstitialConfigurations() {
        return this.interstitialConfigurations;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final ol getNativeAdConfigurations() {
        return this.nativeAdConfigurations;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final tp getRewardedVideoConfigurations() {
        return this.rewardedVideoConfigurations;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final jt getTestSuiteSettings() {
        return this.testSuiteSettings;
    }

    public String toString() {
        return "configurations(\n" + this.rewardedVideoConfigurations + '\n' + this.interstitialConfigurations + '\n' + this.bannerConfigurations + '\n' + this.nativeAdConfigurations + ')';
    }
}
