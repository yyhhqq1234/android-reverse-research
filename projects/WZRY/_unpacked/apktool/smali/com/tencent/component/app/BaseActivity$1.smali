.class Lcom/tencent/component/app/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/app/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/app/BaseActivity;


# direct methods
.method constructor <init>(Lcom/tencent/component/app/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/app/BaseActivity;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/tencent/component/app/BaseActivity$1;->this$0:Lcom/tencent/component/app/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 21
    if-nez p1, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v0

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/tencent/component/app/BaseActivity$1;->this$0:Lcom/tencent/component/app/BaseActivity;

    invoke-virtual {v1}, Lcom/tencent/component/app/BaseActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/tencent/component/app/BaseActivity$1;->this$0:Lcom/tencent/component/app/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/tencent/component/app/BaseActivity;->handleMessageLogic(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method
