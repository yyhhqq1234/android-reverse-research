.class Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$3;
.super Ljava/lang/Object;
.source "ManageRSAActivity.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/network/IParamsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$3;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 243
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$3;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->accountId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/epay/sdk/rsa/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    const-string v2, "userPublicKey"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    return-object v0
.end method
