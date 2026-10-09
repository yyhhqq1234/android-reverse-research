.class public final enum Lcom/tencent/qt/base/net/PLog$TraceMode;
.super Ljava/lang/Enum;
.source "PLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qt/base/net/PLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TraceMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/qt/base/net/PLog$TraceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qt/base/net/PLog$TraceMode;

.field public static final enum all:Lcom/tencent/qt/base/net/PLog$TraceMode;

.field public static final enum none:Lcom/tencent/qt/base/net/PLog$TraceMode;

.field public static final enum offline:Lcom/tencent/qt/base/net/PLog$TraceMode;

.field public static final enum realtime:Lcom/tencent/qt/base/net/PLog$TraceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/tencent/qt/base/net/PLog$TraceMode;

    const-string v1, "none"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qt/base/net/PLog$TraceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qt/base/net/PLog$TraceMode;->none:Lcom/tencent/qt/base/net/PLog$TraceMode;

    .line 20
    new-instance v0, Lcom/tencent/qt/base/net/PLog$TraceMode;

    const-string v1, "realtime"

    invoke-direct {v0, v1, v3}, Lcom/tencent/qt/base/net/PLog$TraceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qt/base/net/PLog$TraceMode;->realtime:Lcom/tencent/qt/base/net/PLog$TraceMode;

    .line 21
    new-instance v0, Lcom/tencent/qt/base/net/PLog$TraceMode;

    const-string v1, "offline"

    invoke-direct {v0, v1, v4}, Lcom/tencent/qt/base/net/PLog$TraceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qt/base/net/PLog$TraceMode;->offline:Lcom/tencent/qt/base/net/PLog$TraceMode;

    .line 22
    new-instance v0, Lcom/tencent/qt/base/net/PLog$TraceMode;

    const-string v1, "all"

    invoke-direct {v0, v1, v5}, Lcom/tencent/qt/base/net/PLog$TraceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qt/base/net/PLog$TraceMode;->all:Lcom/tencent/qt/base/net/PLog$TraceMode;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/qt/base/net/PLog$TraceMode;

    sget-object v1, Lcom/tencent/qt/base/net/PLog$TraceMode;->none:Lcom/tencent/qt/base/net/PLog$TraceMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/qt/base/net/PLog$TraceMode;->realtime:Lcom/tencent/qt/base/net/PLog$TraceMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qt/base/net/PLog$TraceMode;->offline:Lcom/tencent/qt/base/net/PLog$TraceMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qt/base/net/PLog$TraceMode;->all:Lcom/tencent/qt/base/net/PLog$TraceMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/qt/base/net/PLog$TraceMode;->$VALUES:[Lcom/tencent/qt/base/net/PLog$TraceMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qt/base/net/PLog$TraceMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/tencent/qt/base/net/PLog$TraceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qt/base/net/PLog$TraceMode;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qt/base/net/PLog$TraceMode;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/tencent/qt/base/net/PLog$TraceMode;->$VALUES:[Lcom/tencent/qt/base/net/PLog$TraceMode;

    invoke-virtual {v0}, [Lcom/tencent/qt/base/net/PLog$TraceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qt/base/net/PLog$TraceMode;

    return-object v0
.end method
