.class Lcom/netease/ntunisdk/SdkNetease$8;
.super Ljava/lang/Object;
.source "SdkNetease.java"

# interfaces
.implements Lcom/netease/mpay/SetRealnameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNetease;->showRealnameDialog(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNetease;

.field final synthetic val$obj:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNetease;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/ntunisdk/SdkNetease;

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNetease$8;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNetease$8;->val$obj:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/netease/mpay/User;)V
    .locals 3
    .param p1, "user"    # Lcom/netease/mpay/User;

    .prologue
    .line 1007
    if-nez p1, :cond_0

    .line 1008
    const-string v0, "UniSDK netease"

    const-string v1, "showRealnameDialog, not login"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$8;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/SdkNetease;->resetCommonProp()V

    .line 1010
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$8;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/SdkNetease;->loginDone(I)V

    .line 1021
    :goto_0
    return-void

    .line 1012
    :cond_0
    const-string v0, "UniSDK netease"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showRealnameDialog res:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/netease/mpay/User;->realnameSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-boolean v0, p1, Lcom/netease/mpay/User;->realnameSet:Z

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$8;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "REAL_NAME_VERIFIED"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNetease;->setPropInt(Ljava/lang/String;I)V

    .line 1019
    :goto_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$8;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease$8;->val$obj:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/SdkNetease;->extendFuncCall(Ljava/lang/String;)V

    goto :goto_0

    .line 1016
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$8;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "REAL_NAME_VERIFIED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNetease;->setPropInt(Ljava/lang/String;I)V

    goto :goto_1
.end method
