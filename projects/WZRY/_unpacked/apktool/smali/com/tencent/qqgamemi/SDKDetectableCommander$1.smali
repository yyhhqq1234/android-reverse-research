.class Lcom/tencent/qqgamemi/SDKDetectableCommander$1;
.super Ljava/lang/Object;
.source "SDKDetectableCommander.java"

# interfaces
.implements Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqgamemi/SDKDetectableCommander;->writeCmdWithCheckAndFeature(Ljava/lang/String;Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

.field final synthetic val$args:Ljava/lang/Object;

.field final synthetic val$checkFeauture:I

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/qqgamemi/SDKDetectableCommander;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qqgamemi/SDKDetectableCommander;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$1;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    iput p2, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$1;->val$checkFeauture:I

    iput-object p3, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$1;->val$cmd:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$1;->val$args:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(I)V
    .locals 4
    .param p1, "sdkFeature"    # I

    .prologue
    .line 79
    sget-object v1, Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;->Maintaining:Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;

    invoke-virtual {v1, p1}, Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;->isEnable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$1;->val$checkFeauture:I

    and-int/2addr v1, p1

    iget v2, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$1;->val$checkFeauture:I

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 81
    .local v0, "isEnable":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$1;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    iget-object v2, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$1;->val$cmd:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$1;->val$args:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->invokeQmiWriteCmd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    .end local v0    # "isEnable":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
