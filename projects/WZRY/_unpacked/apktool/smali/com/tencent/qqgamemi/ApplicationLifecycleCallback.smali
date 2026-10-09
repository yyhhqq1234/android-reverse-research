.class public Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;
.super Ljava/lang/Object;
.source "ApplicationLifecycleCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static activityCb:Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;


# instance fields
.field private context:Landroid/content/Context;

.field private isRegister:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "LifecycleCallback"

    sput-object v0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->activityCb:Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->isRegister:Z

    .line 24
    iput-object p1, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->context:Landroid/content/Context;

    .line 25
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->activityCb:Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;

    return-object v0
.end method


# virtual methods
.method public final register()V
    .locals 3

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->isRegister:Z

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->activityCb:Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 33
    new-instance v1, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;

    iget-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;-><init>(Landroid/app/Activity;Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$1;)V

    sput-object v1, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->activityCb:Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;

    .line 34
    iget-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->activityCb:Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->isRegister:Z

    goto :goto_0
.end method

.method public final unRegister()V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->isRegister:Z

    .line 43
    sget-object v0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->activityCb:Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 44
    iget-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->activityCb:Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 47
    :cond_0
    sget-object v0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->activityCb:Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->detach()V

    .line 50
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->context:Landroid/content/Context;

    .line 51
    return-void
.end method
