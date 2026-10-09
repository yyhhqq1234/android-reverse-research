.class public final enum Lcom/tencent/qt/base/net/PLog$StoreMode;
.super Ljava/lang/Enum;
.source "PLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qt/base/net/PLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/qt/base/net/PLog$StoreMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qt/base/net/PLog$StoreMode;

.field public static final enum fixed:Lcom/tencent/qt/base/net/PLog$StoreMode;

.field public static final enum flexible:Lcom/tencent/qt/base/net/PLog$StoreMode;

.field public static final enum none:Lcom/tencent/qt/base/net/PLog$StoreMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/tencent/qt/base/net/PLog$StoreMode;

    const-string v1, "none"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qt/base/net/PLog$StoreMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qt/base/net/PLog$StoreMode;->none:Lcom/tencent/qt/base/net/PLog$StoreMode;

    .line 27
    new-instance v0, Lcom/tencent/qt/base/net/PLog$StoreMode;

    const-string v1, "fixed"

    invoke-direct {v0, v1, v3}, Lcom/tencent/qt/base/net/PLog$StoreMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qt/base/net/PLog$StoreMode;->fixed:Lcom/tencent/qt/base/net/PLog$StoreMode;

    .line 28
    new-instance v0, Lcom/tencent/qt/base/net/PLog$StoreMode;

    const-string v1, "flexible"

    invoke-direct {v0, v1, v4}, Lcom/tencent/qt/base/net/PLog$StoreMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qt/base/net/PLog$StoreMode;->flexible:Lcom/tencent/qt/base/net/PLog$StoreMode;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/qt/base/net/PLog$StoreMode;

    sget-object v1, Lcom/tencent/qt/base/net/PLog$StoreMode;->none:Lcom/tencent/qt/base/net/PLog$StoreMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/qt/base/net/PLog$StoreMode;->fixed:Lcom/tencent/qt/base/net/PLog$StoreMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qt/base/net/PLog$StoreMode;->flexible:Lcom/tencent/qt/base/net/PLog$StoreMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/qt/base/net/PLog$StoreMode;->$VALUES:[Lcom/tencent/qt/base/net/PLog$StoreMode;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qt/base/net/PLog$StoreMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/tencent/qt/base/net/PLog$StoreMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qt/base/net/PLog$StoreMode;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qt/base/net/PLog$StoreMode;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/tencent/qt/base/net/PLog$StoreMode;->$VALUES:[Lcom/tencent/qt/base/net/PLog$StoreMode;

    invoke-virtual {v0}, [Lcom/tencent/qt/base/net/PLog$StoreMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qt/base/net/PLog$StoreMode;

    return-object v0
.end method
