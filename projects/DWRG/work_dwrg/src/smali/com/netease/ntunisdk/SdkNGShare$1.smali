.class Lcom/netease/ntunisdk/SdkNGShare$1;
.super Ljava/lang/Object;
.source "SdkNGShare.java"

# interfaces
.implements Lcom/netease/ntsharesdk/OnShareEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNGShare;->init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNGShare;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNGShare;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNGShare$1;->this$0:Lcom/netease/ntunisdk/SdkNGShare;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V
    .locals 7
    .param p1, "pf"    # Ljava/lang/String;
    .param p2, "result"    # I
    .param p3, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    const-string v1, "UniSDK ngshare"

    const-string v2, "pf:%s,result:%s, failmsg:%s"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v4, 0x2

    if-nez p3, :cond_1

    const-string v0, ""

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "CHANNEL_ID"

    invoke-interface {v0, v1, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/netease/ntsharesdk/ShareArgs;->getFailMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "NT_CALLBACK_MESSAGE"

    invoke-virtual {p3}, Lcom/netease/ntsharesdk/ShareArgs;->getFailMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    if-nez p2, :cond_2

    .line 48
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShare$1;->this$0:Lcom/netease/ntunisdk/SdkNGShare;

    invoke-virtual {v0, v6}, Lcom/netease/ntunisdk/SdkNGShare;->shareFinished(Z)V

    .line 52
    :goto_1
    return-void

    .line 42
    :cond_1
    invoke-virtual {p3}, Lcom/netease/ntsharesdk/ShareArgs;->getFailMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShare$1;->this$0:Lcom/netease/ntunisdk/SdkNGShare;

    invoke-virtual {v0, v5}, Lcom/netease/ntunisdk/SdkNGShare;->shareFinished(Z)V

    goto :goto_1
.end method
