.class public Lim/yixin/sdk/api/SendAuthToYX$Resp;
.super Lim/yixin/sdk/api/BaseResp;
.source "SendAuthToYX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/yixin/sdk/api/SendAuthToYX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resp"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lim/yixin/sdk/api/BaseResp;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-direct {p0}, Lim/yixin/sdk/api/BaseResp;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lim/yixin/sdk/api/SendAuthToYX$Resp;->fromBundle(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final checkArgs()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lim/yixin/sdk/api/BaseResp;->fromBundle(Landroid/os/Bundle;)V

    .line 35
    const-string v0, "_yxapi_sendauthtoyx_resp_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/SendAuthToYX$Resp;->code:Ljava/lang/String;

    .line 36
    const-string v0, "_yxapi_sendauthtoyx_resp_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/SendAuthToYX$Resp;->state:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x2

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lim/yixin/sdk/api/BaseResp;->toBundle(Landroid/os/Bundle;)V

    .line 41
    const-string v0, "_yxapi_sendauthtoyx_resp_code"

    iget-object v1, p0, Lim/yixin/sdk/api/SendAuthToYX$Resp;->code:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "_yxapi_sendauthtoyx_resp_state"

    iget-object v1, p0, Lim/yixin/sdk/api/SendAuthToYX$Resp;->state:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
