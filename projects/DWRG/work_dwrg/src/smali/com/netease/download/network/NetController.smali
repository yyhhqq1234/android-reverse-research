.class public Lcom/netease/download/network/NetController;
.super Ljava/lang/Object;
.source "NetController.java"


# static fields
.field private static final NO_INTERRUPTED:I

.field private static mController:Lcom/netease/download/network/NetController;


# instance fields
.field private mInterruptedCode:I

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/network/NetController;->mController:Lcom/netease/download/network/NetController;

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/download/network/NetController;->mInterruptedCode:I

    .line 26
    return-void
.end method

.method public static getInstances()Lcom/netease/download/network/NetController;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/netease/download/network/NetController;->mController:Lcom/netease/download/network/NetController;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/netease/download/network/NetController;

    invoke-direct {v0}, Lcom/netease/download/network/NetController;-><init>()V

    sput-object v0, Lcom/netease/download/network/NetController;->mController:Lcom/netease/download/network/NetController;

    .line 34
    :cond_0
    sget-object v0, Lcom/netease/download/network/NetController;->mController:Lcom/netease/download/network/NetController;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getInterruptedCode()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/netease/download/network/NetController;->mInterruptedCode:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/netease/download/network/NetController;->mStatus:I

    return v0
.end method

.method public isInterrupted()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/netease/download/network/NetController;->mInterruptedCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restore()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/download/network/NetController;->mInterruptedCode:I

    .line 60
    return-void
.end method

.method public setInterruptedCode(I)V
    .locals 0
    .param p1, "mInterruptedCode"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/netease/download/network/NetController;->mInterruptedCode:I

    .line 43
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "mStatus"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/netease/download/network/NetController;->mStatus:I

    .line 55
    return-void
.end method
