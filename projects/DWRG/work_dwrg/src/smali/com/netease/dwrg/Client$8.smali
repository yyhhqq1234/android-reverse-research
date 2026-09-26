.class Lcom/netease/dwrg/Client$8;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/Client;->showGMFloatButton(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/Client;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/Client;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/Client;

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/netease/dwrg/Client$8;->this$0:Lcom/netease/dwrg/Client;

    iput-object p2, p0, Lcom/netease/dwrg/Client$8;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken(Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenSetter;)V
    .locals 3
    .param p1, "tokenSetter"    # Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenSetter;

    .prologue
    .line 1269
    const-string v0, "GMBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showGMFloatButton] IAsynTokenRequest.getToken by uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/dwrg/Client$8;->val$uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v0, p0, Lcom/netease/dwrg/Client$8;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0, p1}, Lcom/netease/dwrg/Client;->access$802(Lcom/netease/dwrg/Client;Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenSetter;)Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenSetter;

    .line 1271
    iget-object v0, p0, Lcom/netease/dwrg/Client$8;->this$0:Lcom/netease/dwrg/Client;

    iget-object v1, p0, Lcom/netease/dwrg/Client$8;->val$uid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/dwrg/Client;->access$902(Lcom/netease/dwrg/Client;Ljava/lang/String;)Ljava/lang/String;

    .line 1274
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeOnGMBridgeTokenOverdue()V

    .line 1275
    return-void
.end method
