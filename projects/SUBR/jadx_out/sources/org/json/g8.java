package org.json;

import android.content.Context;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.environment.ContextProvider;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0016\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0018\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u0014\u0010\u0007\u001a\u00020\u00062\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004H\u0016J:\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\r0\f2\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0007\u0010\u000eJ\u0014\u0010\u000f\u001a\u00020\r2\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004H\u0016R\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0014\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"Lcom/ironsource/g8;", "Lcom/ironsource/ie;", "Lcom/ironsource/ie$a;", "", "Lcom/ironsource/services/capping/Identifier;", "identifier", "Lcom/ironsource/i8;", "a", "Lcom/ironsource/k8;", "cappingType", "Lcom/ironsource/ge;", "cappingConfig", "Lkotlin/Result;", "", "(Ljava/lang/String;Lcom/ironsource/k8;Lcom/ironsource/ge;)Ljava/lang/Object;", "b", "Lcom/ironsource/vn;", "Lcom/ironsource/vn;", "pacingHandler", "Lcom/ironsource/gs;", "Lcom/ironsource/gs;", "showCountHandler", "Lcom/ironsource/n9;", "currentTimeProvider", "Lcom/ironsource/ze;", "pacingDataRepository", "Lcom/ironsource/bh;", "showCountDataRepository", "<init>", "(Lcom/ironsource/n9;Lcom/ironsource/ze;Lcom/ironsource/bh;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class g8 implements ie, ie.a {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final vn pacingHandler;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final gs showCountHandler;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[k8.values().length];
            try {
                iArr[k8.Pacing.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[k8.ShowCount.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[k8.Delivery.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public g8() {
        this(null, null, null, 7, null);
    }

    public g8(n9 currentTimeProvider, ze pacingDataRepository, bh showCountDataRepository) {
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        Intrinsics.checkNotNullParameter(pacingDataRepository, "pacingDataRepository");
        Intrinsics.checkNotNullParameter(showCountDataRepository, "showCountDataRepository");
        this.pacingHandler = new vn(currentTimeProvider, pacingDataRepository);
        this.showCountHandler = new gs(currentTimeProvider, showCountDataRepository);
    }

    public /* synthetic */ g8(n9 n9Var, ze zeVar, bh bhVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        n9Var = (i & 1) != 0 ? new n9.a() : n9Var;
        if ((i & 2) != 0) {
            Context applicationContext = ContextProvider.getInstance().getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getInstance().applicationContext");
            zeVar = new wn(new bs(applicationContext, "pacing_service", null, 4, null));
        }
        if ((i & 4) != 0) {
            Context applicationContext2 = ContextProvider.getInstance().getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext2, "getInstance().applicationContext");
            bhVar = new es(new bs(applicationContext2, "capping_service", null, 4, null));
        }
        this(n9Var, zeVar, bhVar);
    }

    @Override // org.json.ie
    public synchronized i8 a(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        i8 i8VarA = this.pacingHandler.a(identifier);
        if (i8VarA.d()) {
            return i8VarA;
        }
        return this.showCountHandler.a(identifier);
    }

    @Override // com.ironsource.ie.a
    public synchronized Object a(String identifier, k8 cappingType, ge cappingConfig) {
        Object objA;
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(cappingType, "cappingType");
        Intrinsics.checkNotNullParameter(cappingConfig, "cappingConfig");
        int i = a.a[cappingType.ordinal()];
        if (i == 1) {
            objA = this.pacingHandler.a(identifier, cappingType, cappingConfig);
        } else if (i == 2) {
            objA = this.showCountHandler.a(identifier, cappingType, cappingConfig);
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            Result.Companion companion = Result.INSTANCE;
            objA = Result.m601constructorimpl(Unit.INSTANCE);
        }
        return objA;
    }

    @Override // com.ironsource.ie.a
    public synchronized void b(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        this.pacingHandler.b(identifier);
        this.showCountHandler.b(identifier);
    }
}
