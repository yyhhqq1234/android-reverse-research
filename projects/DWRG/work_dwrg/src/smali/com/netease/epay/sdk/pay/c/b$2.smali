.class Lcom/netease/epay/sdk/pay/c/b$2;
.super Lcom/netease/epay/sdk/pay/b;
.source "EpayPayFragPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/c/b;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/pay/b",
        "<",
        "Lcom/netease/epay/sdk/pay/model/PayingResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/epay/sdk/pay/c/b;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/c/b;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/c/b$2;->b:Lcom/netease/epay/sdk/pay/c/b;

    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)V
    .locals 3

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/pay/b;->a(Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)V

    .line 124
    new-instance v0, Lcom/netease/epay/sdk/base/util/DelayedTask;

    const/16 v1, 0x3e8

    new-instance v2, Lcom/netease/epay/sdk/pay/c/b$2$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/netease/epay/sdk/pay/c/b$2$1;-><init>(Lcom/netease/epay/sdk/pay/c/b$2;Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/DelayedTask;-><init>(ILcom/netease/epay/sdk/base/util/DelayedTask$IDelayedListener;)V

    .line 139
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/DelayedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    return-void
.end method
