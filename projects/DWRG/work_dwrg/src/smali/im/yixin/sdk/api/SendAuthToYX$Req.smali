.class public Lim/yixin/sdk/api/SendAuthToYX$Req;
.super Lim/yixin/sdk/api/BaseReq;
.source "SendAuthToYX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/yixin/sdk/api/SendAuthToYX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# instance fields
.field public redirectUrl:Ljava/lang/String;

.field public scope:Ljava/lang/String;

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lim/yixin/sdk/api/BaseReq;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-direct {p0}, Lim/yixin/sdk/api/BaseReq;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lim/yixin/sdk/api/SendAuthToYX$Req;->fromBundle(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method


# virtual methods
.method public final checkArgs(Lim/yixin/sdk/api/ExceptionInfo;)Z
    .locals 4
    .param p1, "info"    # Lim/yixin/sdk/api/ExceptionInfo;

    .prologue
    const/16 v2, 0x400

    const/4 v0, 0x0

    .line 73
    iget-object v1, p0, Lim/yixin/sdk/api/SendAuthToYX$Req;->scope:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lim/yixin/sdk/api/SendAuthToYX$Req;->scope:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 74
    const-string v1, "scope.length > 1024 "

    invoke-virtual {p1, v1}, Lim/yixin/sdk/api/ExceptionInfo;->appendReason(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v1

    const-class v2, Lim/yixin/sdk/api/SendAuthToYX$Req;

    invoke-virtual {p1}, Lim/yixin/sdk/api/ExceptionInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lim/yixin/sdk/util/SDKHttpUtils;->get4ErrorLog(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    :goto_0
    return v0

    .line 78
    :cond_0
    iget-object v1, p0, Lim/yixin/sdk/api/SendAuthToYX$Req;->state:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lim/yixin/sdk/api/SendAuthToYX$Req;->state:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 79
    const-string v1, "state.length > 1024 "

    invoke-virtual {p1, v1}, Lim/yixin/sdk/api/ExceptionInfo;->appendReason(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v1

    const-class v2, Lim/yixin/sdk/api/SendAuthToYX$Req;

    invoke-virtual {p1}, Lim/yixin/sdk/api/ExceptionInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lim/yixin/sdk/util/SDKHttpUtils;->get4ErrorLog(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, p0, Lim/yixin/sdk/api/SendAuthToYX$Req;->redirectUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lim/yixin/sdk/api/SendAuthToYX$Req;->redirectUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2800

    if-le v1, v2, :cond_2

    .line 84
    const-string v1, "redirectUrl.length > 10240 "

    invoke-virtual {p1, v1}, Lim/yixin/sdk/api/ExceptionInfo;->appendReason(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v1

    const-class v2, Lim/yixin/sdk/api/SendAuthToYX$Req;

    invoke-virtual {p1}, Lim/yixin/sdk/api/ExceptionInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lim/yixin/sdk/util/SDKHttpUtils;->get4ErrorLog(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lim/yixin/sdk/api/BaseReq;->fromBundle(Landroid/os/Bundle;)V

    .line 93
    const-string v0, "_yxapi_sendauthtoyx_req_scope"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/SendAuthToYX$Req;->scope:Ljava/lang/String;

    .line 94
    const-string v0, "_yxapi_sendauthtoyx_req_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/SendAuthToYX$Req;->state:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x2

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lim/yixin/sdk/api/BaseReq;->toBundle(Landroid/os/Bundle;)V

    .line 99
    const-string v0, "_yxapi_sendauthtoyx_req_scope"

    iget-object v1, p0, Lim/yixin/sdk/api/SendAuthToYX$Req;->scope:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "_yxapi_sendauthtoyx_req_state"

    iget-object v1, p0, Lim/yixin/sdk/api/SendAuthToYX$Req;->state:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method
