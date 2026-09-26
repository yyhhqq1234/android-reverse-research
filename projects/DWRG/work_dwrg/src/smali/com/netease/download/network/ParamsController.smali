.class public Lcom/netease/download/network/ParamsController;
.super Ljava/lang/Object;
.source "ParamsController.java"


# instance fields
.field private logusefile:Z

.field private threadnum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x5

    iput v0, p0, Lcom/netease/download/network/ParamsController;->threadnum:I

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/download/network/ParamsController;->logusefile:Z

    .line 14
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 25
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
