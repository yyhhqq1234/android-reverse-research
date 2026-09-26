.class public Lim/yixin/sdk/api/SendMessageToYX$Resp;
.super Lim/yixin/sdk/api/BaseResp;
.source "SendMessageToYX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/yixin/sdk/api/SendMessageToYX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lim/yixin/sdk/api/BaseResp;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-direct {p0}, Lim/yixin/sdk/api/BaseResp;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lim/yixin/sdk/api/SendMessageToYX$Resp;->fromBundle(Landroid/os/Bundle;)V

    .line 20
    return-void
.end method


# virtual methods
.method public final checkArgs()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lim/yixin/sdk/api/BaseResp;->fromBundle(Landroid/os/Bundle;)V

    .line 28
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lim/yixin/sdk/api/BaseResp;->toBundle(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method
