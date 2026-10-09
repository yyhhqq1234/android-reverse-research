package org.json;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.d;
import org.json.mediationsdk.logger.IronLog;
import org.json.n7;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\b\u0000\u0018\u0000*\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B%\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/ironsource/aa;", "Lcom/ironsource/n7;", "Smash", "Lcom/ironsource/av;", "smash", "", "c", "(Lcom/ironsource/n7;)V", "", "maxSmashesToLoad", "", d.z, "", d.h, "<init>", "(IZLjava/util/List;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class aa<Smash extends n7<?>> extends av<Smash> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aa(int i, boolean z, List<? extends Smash> waterfall) {
        super(i, z, waterfall);
        Intrinsics.checkNotNullParameter(waterfall, "waterfall");
    }

    @Override // org.json.av
    public void c(Smash smash) {
        Intrinsics.checkNotNullParameter(smash, "smash");
        IronLog.INTERNAL.verbose(smash.g().name() + " - Smash " + smash.k() + " is ready to load");
        smash.a(true);
        c().add(smash);
    }
}
