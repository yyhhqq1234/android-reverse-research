.class public final Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorInitTask$init$config$1;
.super Ljava/lang/Object;
.source "OOMMonitorInitTask.kt"

# interfaces
.implements Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorInitTask;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/netease/androidcrashhandler/jvmDumper/OOMMonitorInitTask$init$config$1",
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;",
        "upload",
        "",
        "file",
        "Ljava/io/File;",
        "type",
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;",
        "CrashHunterLib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public upload(Ljava/io/File;Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;)V
    .locals 1

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "todo, upload hprof "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " if necessary"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OOMMonitor"

    invoke-static {p2, p1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
