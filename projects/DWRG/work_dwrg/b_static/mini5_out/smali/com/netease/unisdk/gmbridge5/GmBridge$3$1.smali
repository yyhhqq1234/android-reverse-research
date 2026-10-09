.class Lcom/netease/unisdk/gmbridge5/GmBridge$3$1;
.super Ljava/lang/Object;
.source "GmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/GmBridge$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/gmbridge5/GmBridge$3;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/GmBridge$3;Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$3$1;->this$1:Lcom/netease/unisdk/gmbridge5/GmBridge$3;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$3$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$3$1;->this$1:Lcom/netease/unisdk/gmbridge5/GmBridge$3;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge5/GmBridge$3;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$3$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$3$1;->this$1:Lcom/netease/unisdk/gmbridge5/GmBridge$3;

    iget-object v2, v2, Lcom/netease/unisdk/gmbridge5/GmBridge$3;->val$ngwebviewParam:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$600(Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$3$1;->this$1:Lcom/netease/unisdk/gmbridge5/GmBridge$3;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge5/GmBridge$3;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$700(Lcom/netease/unisdk/gmbridge5/GmBridge;)V

    return-void
.end method
