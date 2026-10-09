.class Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb$2;
.super Ljava/lang/Object;
.source "ApplicationLifecycleCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;


# direct methods
.method constructor <init>(Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb$2;->this$0:Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->access$200()Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb$2;->this$0:Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;

    invoke-static {v0}, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->access$300(Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationLifecycleCallback on onForeground"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApi;->onFront()V

    .line 88
    iget-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb$2;->this$0:Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->access$302(Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;Z)Z

    .line 91
    :cond_0
    return-void
.end method
