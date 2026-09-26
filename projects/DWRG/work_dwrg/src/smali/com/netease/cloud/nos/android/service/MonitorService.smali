.class public Lcom/netease/cloud/nos/android/service/MonitorService;
.super Landroid/app/Service;
.source "MonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cloud/nos/android/service/MonitorService$MsgBinder;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private configInit:Z

.field private msgBinder:Lcom/netease/cloud/nos/android/service/MonitorService$MsgBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/netease/cloud/nos/android/service/MonitorService;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 19
    sput-object v0, Lcom/netease/cloud/nos/android/service/MonitorService;->LOGTAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/cloud/nos/android/service/MonitorService;->msgBinder:Lcom/netease/cloud/nos/android/service/MonitorService$MsgBinder;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/cloud/nos/android/service/MonitorService;->configInit:Z

    .line 18
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/netease/cloud/nos/android/service/MonitorService;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/netease/cloud/nos/android/service/MonitorService;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/netease/cloud/nos/android/service/MonitorService;->postMonitorData()V

    return-void
.end method

.method static synthetic access$2(Lcom/netease/cloud/nos/android/service/MonitorService;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/service/MonitorService;->configInit:Z

    return v0
.end method

.method static synthetic access$3(Lcom/netease/cloud/nos/android/service/MonitorService;Z)V
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/netease/cloud/nos/android/service/MonitorService;->configInit:Z

    return-void
.end method

.method private postMonitorData()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/cloud/nos/android/service/MonitorService$1;

    invoke-direct {v1, p0}, Lcom/netease/cloud/nos/android/service/MonitorService$1;-><init>(Lcom/netease/cloud/nos/android/service/MonitorService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    sget-object v0, Lcom/netease/cloud/nos/android/service/MonitorService;->LOGTAG:Ljava/lang/String;

    const-string v1, "MonitorService onBind"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/netease/cloud/nos/android/service/MonitorService;->msgBinder:Lcom/netease/cloud/nos/android/service/MonitorService$MsgBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/netease/cloud/nos/android/service/MonitorService;->LOGTAG:Ljava/lang/String;

    const-string v1, "MonitorService onCreate"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 74
    new-instance v0, Lcom/netease/cloud/nos/android/service/MonitorService$MsgBinder;

    invoke-direct {v0, p0}, Lcom/netease/cloud/nos/android/service/MonitorService$MsgBinder;-><init>(Lcom/netease/cloud/nos/android/service/MonitorService;)V

    iput-object v0, p0, Lcom/netease/cloud/nos/android/service/MonitorService;->msgBinder:Lcom/netease/cloud/nos/android/service/MonitorService$MsgBinder;

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/netease/cloud/nos/android/service/MonitorService;->LOGTAG:Ljava/lang/String;

    const-string v1, "MonitorService onDestroy"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/cloud/nos/android/service/MonitorService;->msgBinder:Lcom/netease/cloud/nos/android/service/MonitorService$MsgBinder;

    .line 81
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 82
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 87
    sget-object v0, Lcom/netease/cloud/nos/android/service/MonitorService;->LOGTAG:Ljava/lang/String;

    const-string v1, "Service onStart"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 90
    invoke-direct {p0}, Lcom/netease/cloud/nos/android/service/MonitorService;->postMonitorData()V

    .line 92
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 96
    sget-object v0, Lcom/netease/cloud/nos/android/service/MonitorService;->LOGTAG:Ljava/lang/String;

    const-string v1, "Service onStartCommand"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
