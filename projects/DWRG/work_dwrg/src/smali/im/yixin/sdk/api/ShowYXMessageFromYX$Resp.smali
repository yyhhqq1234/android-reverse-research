.class public Lim/yixin/sdk/api/ShowYXMessageFromYX$Resp;
.super Lim/yixin/sdk/api/BaseResp;
.source "ShowYXMessageFromYX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/yixin/sdk/api/ShowYXMessageFromYX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lim/yixin/sdk/api/BaseResp;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-direct {p0}, Lim/yixin/sdk/api/BaseResp;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lim/yixin/sdk/api/ShowYXMessageFromYX$Resp;->fromBundle(Landroid/os/Bundle;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final checkArgs()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lim/yixin/sdk/api/BaseResp;->fromBundle(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x3

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lim/yixin/sdk/api/BaseResp;->toBundle(Landroid/os/Bundle;)V

    .line 31
    return-void
.end method
