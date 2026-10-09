.class public Lcom/tencent/android/tpush/rpc/XGRemoteService;
.super Landroid/app/Service;
.source "ProGuard"


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->SERVICESCHECK:Lcom/jg/EType;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/android/tpush/rpc/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 15
    new-instance v0, Lcom/tencent/android/tpush/rpc/f;

    invoke-direct {v0}, Lcom/tencent/android/tpush/rpc/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/rpc/XGRemoteService;->a:Lcom/tencent/android/tpush/rpc/b;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/tencent/android/tpush/rpc/XGRemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/n;->d(Landroid/content/Context;)V

    .line 37
    iget-object v0, p0, Lcom/tencent/android/tpush/rpc/XGRemoteService;->a:Lcom/tencent/android/tpush/rpc/b;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 21
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/tencent/android/tpush/rpc/XGRemoteService;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pullup"

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/android/tpush/service/n;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 31
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
