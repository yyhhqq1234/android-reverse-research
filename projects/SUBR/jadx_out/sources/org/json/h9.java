package org.json;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B<\u0012\u0006\u0010\f\u001a\u00020\b\u0012\u0006\u0010\u0011\u001a\u00020\r\u0012\u0006\u0010\u0016\u001a\u00020\u0012\u0012\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u0018\u0012\u0004\u0012\u00020\u00040\u0017ø\u0001\u0000¢\u0006\u0004\b#\u0010$J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001a\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u001a\u0010\f\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0011\u001a\u00020\r8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u000e\u0010\u0010R\u001a\u0010\u0016\u001a\u00020\u00128\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R/\u0010\u001d\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u0018\u0012\u0004\u0012\u00020\u00040\u00178\u0016X\u0096\u0004ø\u0001\u0000¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\"\u0010\u0003\u001a\u00020\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\u000e\u0010\"\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006%"}, d2 = {"Lcom/ironsource/h9;", "Lcom/ironsource/wa;", "Lcom/ironsource/mg;", y8.h.b, "", "a", "Lcom/ironsource/eg;", "error", "Lcom/ironsource/mc;", "Lcom/ironsource/mc;", "c", "()Lcom/ironsource/mc;", jc.c.a, "", "b", "Ljava/lang/String;", "()Ljava/lang/String;", "destinationPath", "Lcom/ironsource/pe;", "Lcom/ironsource/pe;", "k", "()Lcom/ironsource/pe;", "downloadManager", "Lkotlin/Function1;", "Lkotlin/Result;", "d", "Lkotlin/jvm/functions/Function1;", "i", "()Lkotlin/jvm/functions/Function1;", "onFinish", "e", "Lcom/ironsource/mg;", "j", "()Lcom/ironsource/mg;", "(Lcom/ironsource/mg;)V", "<init>", "(Lcom/ironsource/mc;Ljava/lang/String;Lcom/ironsource/pe;Lkotlin/jvm/functions/Function1;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class h9 implements wa<mg> {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final mc fileUrl;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final String destinationPath;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final pe downloadManager;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final Function1<Result<? extends mg>, Unit> onFinish;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private mg file;

    /* JADX WARN: Multi-variable type inference failed */
    public h9(mc fileUrl, String destinationPath, pe downloadManager, Function1<? super Result<? extends mg>, Unit> onFinish) {
        Intrinsics.checkNotNullParameter(fileUrl, "fileUrl");
        Intrinsics.checkNotNullParameter(destinationPath, "destinationPath");
        Intrinsics.checkNotNullParameter(downloadManager, "downloadManager");
        Intrinsics.checkNotNullParameter(onFinish, "onFinish");
        this.fileUrl = fileUrl;
        this.destinationPath = destinationPath;
        this.downloadManager = downloadManager;
        this.onFinish = onFinish;
        this.file = new mg(getDestinationPath());
    }

    @Override // org.json.mn
    public void a(mg file) {
        Intrinsics.checkNotNullParameter(file, "file");
        Function1<Result<? extends mg>, Unit> function1I = i();
        Result.Companion companion = Result.INSTANCE;
        function1I.invoke(Result.m600boximpl(Result.m601constructorimpl(file)));
    }

    @Override // org.json.mn
    public void a(mg file, eg error) {
        Intrinsics.checkNotNullParameter(error, "error");
        Function1<Result<? extends mg>, Unit> function1I = i();
        Result.Companion companion = Result.INSTANCE;
        function1I.invoke(Result.m600boximpl(Result.m601constructorimpl(ResultKt.createFailure(new Exception("Unable to download mobileController.html: " + error.b())))));
    }

    @Override // org.json.wa
    /* JADX INFO: renamed from: b, reason: from getter */
    public String getDestinationPath() {
        return this.destinationPath;
    }

    @Override // org.json.wa
    public void b(mg mgVar) {
        Intrinsics.checkNotNullParameter(mgVar, "<set-?>");
        this.file = mgVar;
    }

    @Override // org.json.wa
    /* JADX INFO: renamed from: c, reason: from getter */
    public mc getFileUrl() {
        return this.fileUrl;
    }

    @Override // org.json.wa
    public /* synthetic */ boolean h() {
        return getFile().exists();
    }

    @Override // org.json.wa
    public Function1<Result<? extends mg>, Unit> i() {
        return this.onFinish;
    }

    @Override // org.json.wa
    /* JADX INFO: renamed from: j, reason: from getter */
    public mg getFile() {
        return this.file;
    }

    @Override // org.json.wa
    /* JADX INFO: renamed from: k, reason: from getter */
    public pe getDownloadManager() {
        return this.downloadManager;
    }

    @Override // org.json.wa
    public /* synthetic */ void l() {
        wa.CC.$default$l(this);
    }
}
