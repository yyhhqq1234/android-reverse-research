package org.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u0005J\b\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0005\u001a\u00020\u0004H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/ironsource/vd;", "", "Lcom/ironsource/xd;", "b", "", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public interface vd {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lcom/ironsource/vd$a;", "Lcom/ironsource/vd;", "Lcom/ironsource/xd;", "b", "", "a", "Lcom/ironsource/xd;", "c", "()Lcom/ironsource/xd;", "strategy", "<init>", "(Lcom/ironsource/xd;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a implements vd {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final xd strategy;

        public a(xd strategy) {
            Intrinsics.checkNotNullParameter(strategy, "strategy");
            this.strategy = strategy;
        }

        @Override // org.json.vd
        public String a() {
            return "WebView is unavailable";
        }

        @Override // org.json.vd
        /* JADX INFO: renamed from: b, reason: from getter */
        public xd getStrategy() {
            return this.strategy;
        }

        public final xd c() {
            return this.strategy;
        }
    }

    String a();

    /* JADX INFO: renamed from: b */
    xd getStrategy();
}
