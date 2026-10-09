.class final Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->checkUploadRecordCrash(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 401
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "native_record_lock"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/msdk/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    const-string v0, "[Native] Failed to lock file for handling native crash record."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 429
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    const/16 v1, 0x3e7

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;ILjava/lang/String;)Z

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v1}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->b(Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v2}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->c(Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeExceptionHandler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeExceptionHandler;)Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;

    move-result-object v0

    .line 415
    if-eqz v0, :cond_3

    .line 416
    const-string v1, "[Native] Get crash from native record."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 418
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v1}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->d(Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/msdk/crashreport/crash/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->a(Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 419
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v1}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->d(Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/msdk/crashreport/crash/b;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->a(Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;JZ)V

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->b(Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/b;->a(ZLjava/lang/String;)V

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->a()V

    .line 428
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "native_record_lock"

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/z;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method
