package org.json;

import android.util.Log;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import org.json.sdk.utils.IronSourceStorageUtils;
import org.json.sdk.utils.SDKUtils;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001BD\u0012\u0006\u0010\u0011\u001a\u00020\u000f\u0012#\u0010\u0019\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u000b¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u00150\u0012\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010!\u001a\u00020\u001e¢\u0006\u0004\b3\u00104J \u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u0006\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002J \u0010\f\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0002H\u0002ø\u0001\u0000¢\u0006\u0004\b\f\u0010\u0007J\u0010\u0010\u0006\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000bH\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016R\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0010R4\u0010\u0019\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u000b¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u00150\u00128\u0006¢\u0006\f\n\u0004\b\f\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0017\u0010!\u001a\u00020\u001e8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u001f\u001a\u0004\b\u001b\u0010 R\u001c\u0010%\u001a\n \"*\u0004\u0018\u00010\b0\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010(\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00102\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010$\u0082\u0002\u0004\n\u0002\b\u0019¨\u00065"}, d2 = {"Lcom/ironsource/i9;", "Lcom/ironsource/me;", "Lkotlin/Result;", "Lorg/json/JSONObject;", "result", "", "a", "(Ljava/lang/Object;)V", "", "version", "Lcom/ironsource/h9;", "Lcom/ironsource/mg;", "b", y8.h.b, "", "Lcom/ironsource/f9;", "Lcom/ironsource/f9;", "config", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "", "Lkotlin/jvm/functions/Function1;", "d", "()Lkotlin/jvm/functions/Function1;", "onFinish", "Lcom/ironsource/pe;", "c", "Lcom/ironsource/pe;", "downloadManager", "Lcom/ironsource/n9;", "Lcom/ironsource/n9;", "()Lcom/ironsource/n9;", "currentTimeProvider", "kotlin.jvm.PlatformType", "e", "Ljava/lang/String;", "TAG", "f", "Lcom/ironsource/mg;", "htmlFile", "", "g", "J", "mLoadControllerStartTime", "Lcom/ironsource/ao;", "h", "Lcom/ironsource/ao;", "rootFolder", "i", "htmlBuildNumber", "<init>", "(Lcom/ironsource/f9;Lkotlin/jvm/functions/Function1;Lcom/ironsource/pe;Lcom/ironsource/n9;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class i9 implements me {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final f9 config;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final Function1<mg, Object> onFinish;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final pe downloadManager;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final n9 currentTimeProvider;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final String TAG;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private mg htmlFile;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private long mLoadControllerStartTime;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private final ao rootFolder;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private String htmlBuildNumber;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* synthetic */ class a extends FunctionReferenceImpl implements Function1<Result<? extends mg>, Unit> {
        a(Object obj) {
            super(1, obj, i9.class, "onHtmlDownloadFinished", "onHtmlDownloadFinished(Ljava/lang/Object;)V", 0);
        }

        public final void a(Object obj) {
            ((i9) this.receiver).b(obj);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Result<? extends mg> result) {
            a(result.getValue());
            return Unit.INSTANCE;
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* synthetic */ class b extends FunctionReferenceImpl implements Function1<Result<? extends JSONObject>, Unit> {
        b(Object obj) {
            super(1, obj, i9.class, "onAbTestDownloadFinished", "onAbTestDownloadFinished(Ljava/lang/Object;)V", 0);
        }

        public final void a(Object obj) throws JSONException {
            ((i9) this.receiver).a(obj);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Result<? extends JSONObject> result) throws JSONException {
            a(result.getValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public i9(f9 config, Function1<? super mg, ? extends Object> onFinish, pe downloadManager, n9 currentTimeProvider) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(onFinish, "onFinish");
        Intrinsics.checkNotNullParameter(downloadManager, "downloadManager");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        this.config = config;
        this.onFinish = onFinish;
        this.downloadManager = downloadManager;
        this.currentTimeProvider = currentTimeProvider;
        this.TAG = "i9";
        this.htmlFile = new mg(config.getCacheFolder(), "mobileController_0.html");
        this.mLoadControllerStartTime = currentTimeProvider.a();
        this.rootFolder = new ao(config.getControllerUrl());
        this.htmlBuildNumber = "";
    }

    private final h9 a(String version) {
        return new h9(new gu(this.rootFolder, version), this.config.getCacheFolder() + "/mobileController_" + version + ".html", this.downloadManager, new a(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Object result) throws JSONException {
        h9 h9VarA;
        if (Result.m607isFailureimpl(result)) {
            result = null;
        }
        JSONObject jSONObject = (JSONObject) result;
        if (jSONObject == null || Intrinsics.areEqual(jSONObject.optString("htmlBuildNumber"), "")) {
            h9VarA = a("0");
        } else {
            SDKUtils.updateControllerConfig("abTestMap", jSONObject);
            String string = jSONObject.getString("htmlBuildNumber");
            Intrinsics.checkNotNullExpressionValue(string, "abTestMapAsJson.getString(\"htmlBuildNumber\")");
            this.htmlBuildNumber = string;
            h9VarA = a(string);
            if (h9VarA.h()) {
                mg file = h9VarA.getCom.ironsource.y8.h.b java.lang.String();
                this.htmlFile = file;
                this.onFinish.invoke(file);
                return;
            }
        }
        h9VarA.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(Object result) {
        if (Result.m608isSuccessimpl(result)) {
            mg mgVar = (mg) (Result.m607isFailureimpl(result) ? null : result);
            if (!Intrinsics.areEqual(mgVar != null ? mgVar.getAbsolutePath() : null, this.htmlFile.getAbsolutePath())) {
                try {
                    IronSourceStorageUtils.deleteFile(this.htmlFile);
                    Intrinsics.checkNotNull(mgVar);
                    FilesKt.copyTo$default(mgVar, this.htmlFile, true, 0, 4, null);
                } catch (Exception e) {
                    l9.d().a(e);
                    Log.e(this.TAG, "Unable to copy downloaded mobileController.html to cache folder: " + e.getMessage());
                }
                Intrinsics.checkNotNull(mgVar);
                this.htmlFile = mgVar;
            }
            new g9.b(this.config.getShouldUseVersionedFlow(), this.mLoadControllerStartTime, this.currentTimeProvider).a();
        } else {
            new g9.a(this.config.getShouldUseVersionedFlow()).a();
        }
        Function1<mg, Object> function1 = this.onFinish;
        if (Result.m607isFailureimpl(result)) {
            result = null;
        }
        function1.invoke((mg) result);
    }

    @Override // org.json.me
    public void a() {
        this.mLoadControllerStartTime = this.currentTimeProvider.a();
        new c(new d(this.rootFolder), this.config.getCacheFolder() + "/temp", this.downloadManager, new b(this)).l();
    }

    @Override // org.json.me
    public boolean a(mg file) {
        Intrinsics.checkNotNullParameter(file, "file");
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "file.name");
        return new Regex("mobileController(_\\d+)?\\.html").matches(name);
    }

    @Override // org.json.me
    /* JADX INFO: renamed from: b, reason: from getter */
    public mg getHtmlFile() {
        return this.htmlFile;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final n9 getCurrentTimeProvider() {
        return this.currentTimeProvider;
    }

    public final Function1<mg, Object> d() {
        return this.onFinish;
    }
}
