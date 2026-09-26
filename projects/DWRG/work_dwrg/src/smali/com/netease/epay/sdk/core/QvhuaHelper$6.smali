.class Lcom/netease/epay/sdk/core/QvhuaHelper$6;
.super Lcom/netease/epay/sdk/NetCallback;
.source "QvhuaHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/QvhuaHelper;->queryNeedFaceDetect(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/model/QvhuaNeedFace;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/support/v4/app/FragmentActivity;

.field final synthetic d:Lcom/netease/epay/sdk/core/QvhuaHelper;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/core/QvhuaHelper;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$6;->d:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iput-object p2, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$6;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$6;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/model/QvhuaNeedFace;)V
    .locals 3

    .prologue
    .line 246
    iget-boolean v0, p2, Lcom/netease/epay/sdk/model/QvhuaNeedFace;->needFaceDetect:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$6;->d:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iget-object v1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$6;->b:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/netease/epay/sdk/core/QvhuaHelper;->access$200(Lcom/netease/epay/sdk/core/QvhuaHelper;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v0, Lcom/netease/epay/sdk/base/event/EpayEvent;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/event/EpayEvent;-><init>()V

    .line 250
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->isSucc:Z

    .line 251
    iget-object v1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$6;->d:Lcom/netease/epay/sdk/core/QvhuaHelper;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/core/QvhuaHelper;->returnCallBackExit(Lcom/netease/epay/sdk/base/event/EpayEvent;)V

    goto :goto_0
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 4
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$6;->d:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iget-object v1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$6;->c:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$6;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$6;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/core/QvhuaHelper;->access$200(Lcom/netease/epay/sdk/core/QvhuaHelper;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 243
    check-cast p2, Lcom/netease/epay/sdk/model/QvhuaNeedFace;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/core/QvhuaHelper$6;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/model/QvhuaNeedFace;)V

    return-void
.end method
