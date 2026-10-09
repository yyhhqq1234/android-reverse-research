.class Lcom/tencent/qqgamemi/SDKDetectableCommander$3;
.super Ljava/lang/Object;
.source "SDKDetectableCommander.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqgamemi/SDKDetectableCommander;->notifyGameMessageEvent(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$switchs:I


# direct methods
.method constructor <init>(Lcom/tencent/qqgamemi/SDKDetectableCommander;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qqgamemi/SDKDetectableCommander;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$3;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    iput-object p2, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$3;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$3;->val$switchs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->getInstance(Landroid/content/Context;)Lcom/tencent/qqgamemi/util/GameMessageEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$3;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$3;->val$switchs:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->onCheckSupportedSDKFeatureCompletion(Landroid/content/Context;I)V

    .line 111
    return-void
.end method
