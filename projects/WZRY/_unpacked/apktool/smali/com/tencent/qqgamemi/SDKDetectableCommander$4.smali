.class Lcom/tencent/qqgamemi/SDKDetectableCommander$4;
.super Ljava/lang/Object;
.source "SDKDetectableCommander.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqgamemi/SDKDetectableCommander;->checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

.field final synthetic val$checkSDKFeatureCallback:Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tencent/qqgamemi/SDKDetectableCommander;Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qqgamemi/SDKDetectableCommander;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    iput-object p2, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->val$checkSDKFeatureCallback:Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->val$context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string v0, "SDKDetectableCommander"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSDKFeature sdkFeatureCache :\u3000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    invoke-static {v2}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->access$000(Lcom/tencent/qqgamemi/SDKDetectableCommander;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  isCheckFeatureCalled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    invoke-static {v2}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->access$100(Lcom/tencent/qqgamemi/SDKDetectableCommander;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    invoke-static {v0}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->access$100(Lcom/tencent/qqgamemi/SDKDetectableCommander;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    const-string v0, "SDKDetectableCommander"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSDKFeature sdkFeatureCache :\u3000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    invoke-static {v2}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->access$000(Lcom/tencent/qqgamemi/SDKDetectableCommander;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    invoke-static {v0}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->access$000(Lcom/tencent/qqgamemi/SDKDetectableCommander;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->val$checkSDKFeatureCallback:Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->val$checkSDKFeatureCallback:Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;

    iget-object v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    invoke-static {v1}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->access$000(Lcom/tencent/qqgamemi/SDKDetectableCommander;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;->check(I)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    iget-object v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    invoke-static {v2}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->access$000(Lcom/tencent/qqgamemi/SDKDetectableCommander;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->access$200(Lcom/tencent/qqgamemi/SDKDetectableCommander;Landroid/content/Context;I)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->val$checkSDKFeatureCallback:Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    invoke-static {v0}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->access$300(Lcom/tencent/qqgamemi/SDKDetectableCommander;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->val$checkSDKFeatureCallback:Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    invoke-static {v0}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->access$408(Lcom/tencent/qqgamemi/SDKDetectableCommander;)I

    goto/16 :goto_0

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->access$102(Lcom/tencent/qqgamemi/SDKDetectableCommander;Z)Z

    .line 164
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->val$checkSDKFeatureCallback:Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;

    if-eqz v0, :cond_5

    .line 166
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    invoke-static {v0}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->access$300(Lcom/tencent/qqgamemi/SDKDetectableCommander;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->val$checkSDKFeatureCallback:Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :goto_1
    const-string v0, "SDKDetectableCommander"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no call checkSDKFeature sdkFeatureCache :\u3000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    invoke-static {v2}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->access$000(Lcom/tencent/qqgamemi/SDKDetectableCommander;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqgamemi/mgc/core/MGCSystemCore;->init(Landroid/content/Context;)V

    .line 172
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    iget-object v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->access$500(Lcom/tencent/qqgamemi/SDKDetectableCommander;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    invoke-static {v0}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->access$408(Lcom/tencent/qqgamemi/SDKDetectableCommander;)I

    goto :goto_1
.end method
