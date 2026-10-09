package org.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\b\u0010\b\u001a\u00020\u0002H\u0016J\b\u0010\t\u001a\u00020\u0002H\u0016R\u0014\u0010\f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u000bR\u0016\u0010\u000e\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\r¨\u0006\u0013"}, d2 = {"Lcom/ironsource/oc;", "Lcom/ironsource/kj;", "", "f", "", "e", "c", "b", "a", "d", "Lcom/ironsource/ir;", "Lcom/ironsource/ir;", "task", "J", "sessionStartTime", "Lcom/ironsource/ee;", "applicationLifecycleService", "<init>", "(Lcom/ironsource/ee;Lcom/ironsource/ir;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class oc implements kj {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final ir task;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private long sessionStartTime;

    public oc(ee applicationLifecycleService, ir task) {
        Intrinsics.checkNotNullParameter(applicationLifecycleService, "applicationLifecycleService");
        Intrinsics.checkNotNullParameter(task, "task");
        this.task = task;
        applicationLifecycleService.a(this);
        f();
    }

    private final long e() {
        return System.currentTimeMillis() - this.sessionStartTime;
    }

    private final void f() {
        this.sessionStartTime = System.currentTimeMillis();
    }

    @Override // org.json.kj
    public void a() {
    }

    @Override // org.json.kj
    public void b() {
        this.task.a(Long.valueOf(e()));
        this.task.run();
    }

    @Override // org.json.kj
    public void c() {
        f();
    }

    @Override // org.json.kj
    public void d() {
    }
}
