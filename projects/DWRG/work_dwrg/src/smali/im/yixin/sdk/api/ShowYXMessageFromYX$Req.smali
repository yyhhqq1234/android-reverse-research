.class public Lim/yixin/sdk/api/ShowYXMessageFromYX$Req;
.super Lim/yixin/sdk/api/BaseReq;
.source "ShowYXMessageFromYX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/yixin/sdk/api/ShowYXMessageFromYX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# instance fields
.field public extInfo:Ljava/lang/String;

.field public fileData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lim/yixin/sdk/api/BaseReq;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-direct {p0}, Lim/yixin/sdk/api/BaseReq;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lim/yixin/sdk/api/ShowYXMessageFromYX$Req;->fromBundle(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method


# virtual methods
.method public final checkArgs(Lim/yixin/sdk/api/ExceptionInfo;)Z
    .locals 1
    .param p1, "info"    # Lim/yixin/sdk/api/ExceptionInfo;

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lim/yixin/sdk/api/BaseReq;->fromBundle(Landroid/os/Bundle;)V

    .line 70
    const-string v0, "_yxapi_onclickyxmessage_req_extinfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/ShowYXMessageFromYX$Req;->extInfo:Ljava/lang/String;

    .line 71
    const-string v0, "_yxapi_onclickyxmessage_req_filedata"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/ShowYXMessageFromYX$Req;->fileData:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x3

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lim/yixin/sdk/api/BaseReq;->toBundle(Landroid/os/Bundle;)V

    .line 76
    const-string v0, "_yxapi_onclickyxmessage_req_extinfo"

    iget-object v1, p0, Lim/yixin/sdk/api/ShowYXMessageFromYX$Req;->extInfo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "_yxapi_onclickyxmessage_req_filedata"

    iget-object v1, p0, Lim/yixin/sdk/api/ShowYXMessageFromYX$Req;->fileData:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method
