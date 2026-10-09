.class public interface abstract Lcom/tencent/component/utils/log/LogUtil$LogProxy;
.super Ljava/lang/Object;
.source "LogUtil.java"

# interfaces
.implements Lcom/tencent/component/debug/TraceLevel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/utils/log/LogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LogProxy"
.end annotation


# virtual methods
.method public abstract d(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract flush()V
.end method

.method public abstract getWorkerFolder()Ljava/io/File;
.end method

.method public abstract getWorkerFolder(J)Ljava/io/File;
.end method

.method public abstract i(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract init()V
.end method

.method public abstract setFileLogEnable(Z)V
.end method

.method public abstract setLogcatEnable(Z)V
.end method

.method public abstract setTraceLevel(I)V
.end method

.method public abstract v(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract w(Ljava/lang/String;Ljava/lang/String;)V
.end method
