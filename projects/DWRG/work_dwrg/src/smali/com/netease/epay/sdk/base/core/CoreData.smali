.class public Lcom/netease/epay/sdk/base/core/CoreData;
.super Ljava/lang/Object;
.source "CoreData.java"


# static fields
.field public static final ORIGINAL_BIZ_TYPE:I = -0x2

.field public static bizType:I

.field public static isOnWalletMode:Z

.field public static lastActionTime:J

.field public static lastCheckIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, -0x2

    sput v0, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/epay/sdk/base/core/CoreData;->isOnWalletMode:Z

    .line 24
    const/16 v0, -0x64

    sput v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
