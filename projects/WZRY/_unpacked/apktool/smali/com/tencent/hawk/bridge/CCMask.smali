.class public Lcom/tencent/hawk/bridge/CCMask;
.super Ljava/lang/Object;
.source "CCMask.java"


# static fields
.field public static final MSK_APM_VER:I = 0xc

.field public static final MSK_ARCH:I = 0x6

.field public static final MSK_CC:I = 0xd

.field public static final MSK_GAME_VER:I = 0xa

.field public static final MSK_GRAY_MANU:I = 0x3

.field public static final MSK_GRAY_MODEL:I = 0x2

.field public static final MSK_IP:I = 0x5

.field public static final MSK_MAC:I = 0x4

.field public static final MSK_MANU:I = 0x8

.field public static final MSK_MODEL:I = 0x7

.field public static final MSK_OGL_MASK:I = 0xb

.field public static final MSK_OS_VER:I = 0x9

.field public static final MSK_RAND_PB:I = 0x1

.field private static sCCMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput v0, Lcom/tencent/hawk/bridge/CCMask;->sCCMask:I

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initCCMask(I)V
    .locals 0
    .param p0, "mask"    # I

    .prologue
    .line 39
    sput p0, Lcom/tencent/hawk/bridge/CCMask;->sCCMask:I

    .line 40
    return-void
.end method

.method public static isApmVersionEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 43
    sget v1, Lcom/tencent/hawk/bridge/CCMask;->sCCMask:I

    shr-int/lit8 v1, v1, 0xb

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isArchEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 67
    sget v1, Lcom/tencent/hawk/bridge/CCMask;->sCCMask:I

    shr-int/lit8 v1, v1, 0x5

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGameVersionEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 51
    sget v1, Lcom/tencent/hawk/bridge/CCMask;->sCCMask:I

    shr-int/lit8 v1, v1, 0x9

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGrayEnabled()Z
    .locals 1

    .prologue
    .line 92
    sget v0, Lcom/tencent/hawk/bridge/CCMask;->sCCMask:I

    and-int/lit8 v0, v0, 0x1f

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGrayManuEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 80
    sget v1, Lcom/tencent/hawk/bridge/CCMask;->sCCMask:I

    shr-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGrayModelEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 84
    sget v1, Lcom/tencent/hawk/bridge/CCMask;->sCCMask:I

    shr-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIpEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 72
    sget v1, Lcom/tencent/hawk/bridge/CCMask;->sCCMask:I

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMacEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 76
    sget v1, Lcom/tencent/hawk/bridge/CCMask;->sCCMask:I

    shr-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isManuEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 59
    sget v1, Lcom/tencent/hawk/bridge/CCMask;->sCCMask:I

    shr-int/lit8 v1, v1, 0x7

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isModelEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 63
    sget v1, Lcom/tencent/hawk/bridge/CCMask;->sCCMask:I

    shr-int/lit8 v1, v1, 0x6

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOglEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 47
    sget v1, Lcom/tencent/hawk/bridge/CCMask;->sCCMask:I

    shr-int/lit8 v1, v1, 0xa

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOsVersionEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 55
    sget v1, Lcom/tencent/hawk/bridge/CCMask;->sCCMask:I

    shr-int/lit8 v1, v1, 0x8

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRandPbEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 88
    sget v1, Lcom/tencent/hawk/bridge/CCMask;->sCCMask:I

    shr-int/lit8 v1, v1, 0x0

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
