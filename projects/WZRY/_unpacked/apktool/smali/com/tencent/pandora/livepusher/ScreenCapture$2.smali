.class Lcom/tencent/pandora/livepusher/ScreenCapture$2;
.super Landroid/content/BroadcastReceiver;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/pandora/livepusher/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/pandora/livepusher/ScreenCapture;


# direct methods
.method constructor <init>(Lcom/tencent/pandora/livepusher/ScreenCapture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/pandora/livepusher/ScreenCapture;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/tencent/pandora/livepusher/ScreenCapture$2;->this$0:Lcom/tencent/pandora/livepusher/ScreenCapture;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 316
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/pandora/livepusher/ScreenCapture;->ON_ASSISTANT_ACTIVITY_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v1, p0, Lcom/tencent/pandora/livepusher/ScreenCapture$2;->this$0:Lcom/tencent/pandora/livepusher/ScreenCapture;

    sget-object v0, Lcom/tencent/pandora/livepusher/ScreenCapture;->INTENT_REQUEST_CODE:Ljava/lang/String;

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sget-object v0, Lcom/tencent/pandora/livepusher/ScreenCapture;->INTENT_RESULT_CODE:Ljava/lang/String;

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sget-object v0, Lcom/tencent/pandora/livepusher/ScreenCapture;->INTENT_RESULT_DATA:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/pandora/livepusher/ScreenCapture;->access$000(Lcom/tencent/pandora/livepusher/ScreenCapture;IILandroid/content/Intent;)V

    .line 319
    :cond_0
    return-void
.end method
