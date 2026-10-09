.class Lcom/tencent/msdk/WeGame$1;
.super Ljava/lang/Object;
.source "WeGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/WeGame;->getMsdkIp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/WeGame;

.field final synthetic val$apiDomain:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/WeGame;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/WeGame;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/tencent/msdk/WeGame$1;->this$0:Lcom/tencent/msdk/WeGame;

    iput-object p2, p0, Lcom/tencent/msdk/WeGame$1;->val$apiDomain:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 277
    const-string v0, ""

    .line 278
    .local v0, "domain":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/msdk/WeGame$1;->val$apiDomain:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/tencent/msdk/WeGame$1;->val$apiDomain:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_0
    invoke-static {v0}, Lcom/tencent/msdk/tools/Tools;->getInetAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "ip":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/msdk/WeGame$1;->this$0:Lcom/tencent/msdk/WeGame;

    iget-object v2, v2, Lcom/tencent/msdk/WeGame;->msdkIp:[Ljava/lang/String;

    aput-object v1, v2, v4

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "domain is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/WeGame$1;->val$apiDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ip is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/WeGame$1;->this$0:Lcom/tencent/msdk/WeGame;

    iget-object v3, v3, Lcom/tencent/msdk/WeGame;->msdkIp:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 288
    return-void

    .line 280
    .end local v1    # "ip":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/tencent/msdk/WeGame$1;->val$apiDomain:Ljava/lang/String;

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    iget-object v2, p0, Lcom/tencent/msdk/WeGame$1;->val$apiDomain:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 283
    :cond_1
    const-string v2, "apiDomain is error!"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
