package org.json;

import android.graphics.drawable.Drawable;
import android.webkit.URLUtil;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J&\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\b\u0010\tJ&\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\n\u0010\tJ&\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u000b\u0010\tR\u0014\u0010\u000e\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\r\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Lcom/ironsource/eh;", "Lcom/ironsource/fh;", "", "url", "", "d", "Lkotlin/Result;", "Landroid/graphics/drawable/Drawable;", "b", "(Ljava/lang/String;)Ljava/lang/Object;", "c", "a", "Lcom/ironsource/r8;", "Lcom/ironsource/r8;", "connectionFactory", "<init>", "(Lcom/ironsource/r8;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class eh implements fh {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final r8 connectionFactory;

    /* JADX WARN: Multi-variable type inference failed */
    public eh() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public eh(r8 connectionFactory) {
        Intrinsics.checkNotNullParameter(connectionFactory, "connectionFactory");
        this.connectionFactory = connectionFactory;
    }

    public /* synthetic */ eh(r8 r8Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? y9.a : r8Var);
    }

    private final Object b(String url) {
        Object objCreateFromPath;
        Exception exc;
        File file = new File(url);
        if (file.exists()) {
            objCreateFromPath = Drawable.createFromPath(file.getPath());
            if (objCreateFromPath == null) {
                Result.Companion companion = Result.INSTANCE;
                exc = new Exception("failed to create a drawable");
            } else {
                Result.Companion companion2 = Result.INSTANCE;
            }
            return Result.m601constructorimpl(objCreateFromPath);
        }
        Result.Companion companion3 = Result.INSTANCE;
        exc = new Exception("file does not exists");
        objCreateFromPath = ResultKt.createFailure(exc);
        return Result.m601constructorimpl(objCreateFromPath);
    }

    private final Object c(String url) throws IOException {
        InputStream inputStreamA = this.connectionFactory.a(url);
        try {
            Object objCreateFromStream = Drawable.createFromStream(inputStreamA, new File(url).getName());
            CloseableKt.closeFinally(inputStreamA, null);
            if (objCreateFromStream == null) {
                Result.Companion companion = Result.INSTANCE;
                objCreateFromStream = ResultKt.createFailure(new Exception("failed to create a drawable"));
            } else {
                Result.Companion companion2 = Result.INSTANCE;
            }
            return Result.m601constructorimpl(objCreateFromStream);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(inputStreamA, th);
                throw th2;
            }
        }
    }

    private final boolean d(String url) {
        return URLUtil.isHttpsUrl(url);
    }

    @Override // org.json.fh
    public Object a(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            return d(url) ? c(url) : b(url);
        } catch (Exception e) {
            l9.d().a(e);
            Result.Companion companion = Result.INSTANCE;
            return Result.m601constructorimpl(ResultKt.createFailure(e));
        }
    }
}
