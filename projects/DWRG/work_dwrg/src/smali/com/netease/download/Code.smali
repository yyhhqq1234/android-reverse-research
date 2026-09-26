.class public Lcom/netease/download/Code;
.super Ljava/lang/Object;
.source "Code.java"


# static fields
.field public static final Cancel:I = 0xc

.field public static final CfgFileDownloadFaild:I = 0x10

.field public static final InvalidDomain:I = 0xf

.field public static final InvalidParams:I = 0xe

.field public static final InvalidTimeZone:I = 0x11

.field public static final LinkError:I = 0x1

.field public static final MD5Error:I = 0x3

.field public static final ReadContentTimeout:I = 0xd

.field public static final SizeError:I = 0x2

.field public static final SpaceNotEnough:I = 0x5

.field public static final Success:I = 0x0

.field public static final UnknownError:I = 0xb

.field public static final WriteFileError:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method
