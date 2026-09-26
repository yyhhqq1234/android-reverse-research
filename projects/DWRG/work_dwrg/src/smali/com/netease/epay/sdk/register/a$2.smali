.class Lcom/netease/epay/sdk/register/a$2;
.super Lcom/netease/epay/sdk/NetCallback;
.source "RegisterDeviceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/register/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/model/GetCookieByToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/register/a;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/register/a;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/netease/epay/sdk/register/a$2;->a:Lcom/netease/epay/sdk/register/a;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/model/GetCookieByToken;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p2, Lcom/netease/epay/sdk/model/GetCookieByToken;->cookie:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cookie:Ljava/lang/String;

    .line 137
    iget-object v0, p2, Lcom/netease/epay/sdk/model/GetCookieByToken;->cookieType:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cookieType:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 1
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 133
    check-cast p2, Lcom/netease/epay/sdk/model/GetCookieByToken;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/register/a$2;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/model/GetCookieByToken;)V

    return-void
.end method
