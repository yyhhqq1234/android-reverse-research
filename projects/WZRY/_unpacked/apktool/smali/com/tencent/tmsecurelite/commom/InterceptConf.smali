.class public Lcom/tencent/tmsecurelite/commom/InterceptConf;
.super Ljava/lang/Object;
.source "InterceptConf.java"


# static fields
.field public static final CUSTOM_ITEM_BLACK:I = 0x2

.field public static final CUSTOM_ITEM_CUSTOM_KEYWORDS:I = 0x8

.field public static final CUSTOM_ITEM_INTELLIGENT:I = 0x10

.field public static final CUSTOM_ITEM_LASTCALL:I = 0x80

.field public static final CUSTOM_ITEM_STRANGER_CALL:I = 0x40

.field public static final CUSTOM_ITEM_STRANGER_SMS:I = 0x20

.field public static final CUSTOM_ITEM_SYSTEM_CONTACT:I = 0x4

.field public static final CUSTOM_ITEM_WHITE:I = 0x1

.field public static final HOLDOFF_MODE_EXPIRED:B = 0x2t

.field public static final HOLDOFF_MODE_HOLDOFF:B = 0x0t

.field public static final HOLDOFF_MODE_INVALID:B = 0x1t

.field public static final HOLDOFF_MODE_POWEROFF:B = 0x3t

.field public static final INTERCETP_MODE_ACCEPT_WHITE:B = 0x2t

.field public static final INTERCETP_MODE_BLOCK_BLACK:B = 0x1t

.field public static final INTERCETP_MODE_CUSTOM:B = 0x3t

.field public static final INTERCETP_MODE_STANDARD:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConfItemEnable(II)Z
    .locals 1
    .param p0, "customModeConfs"    # I
    .param p1, "confItem"    # I

    .prologue
    .line 109
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setConfItemEnable(IIZ)I
    .locals 1
    .param p0, "customModeConfs"    # I
    .param p1, "confItem"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 91
    if-eqz p2, :cond_0

    .line 92
    or-int v0, p0, p1

    .line 94
    :goto_0
    return v0

    :cond_0
    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    goto :goto_0
.end method
