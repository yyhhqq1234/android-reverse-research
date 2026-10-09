.class Lcom/netease/unisdk/gmbridge5/GmBridge$2;
.super Ljava/lang/Object;
.source "GmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/GmBridge;->openGMPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

.field final synthetic val$cutoutHeight:I

.field final synthetic val$cutoutWidth:I

.field final synthetic val$hasCutout:Z

.field final synthetic val$refer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/lang/String;ZII)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->val$refer:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->val$hasCutout:Z

    iput p4, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->val$cutoutWidth:I

    iput p5, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->val$cutoutHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$100(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->val$refer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->getWholeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$202(Lcom/netease/unisdk/gmbridge5/GmBridge;I)I

    .line 155
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$300(Lcom/netease/unisdk/gmbridge5/GmBridge;)V

    .line 156
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$400(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/ITokenRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/unisdk/gmbridge5/ITokenRequest;->doRequest()V

    goto :goto_0

    .line 158
    :cond_0
    new-instance v1, Lcom/netease/unisdk/gmbridge5/GmBridge$2$1;

    invoke-direct {v1, p0, v0}, Lcom/netease/unisdk/gmbridge5/GmBridge$2$1;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge$2;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
