.class public final enum Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;
.super Ljava/lang/Enum;
.source "Global.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/trbt/videosdk/utils/Global;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

.field public static final enum DEV:Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

.field public static final enum GRAY:Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

.field public static final enum OFFICIAL:Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

    const-string v1, "DEV"

    invoke-direct {v0, v1, v2}, Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;->DEV:Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

    .line 26
    new-instance v0, Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

    const-string v1, "GRAY"

    invoke-direct {v0, v1, v3}, Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;->GRAY:Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

    .line 27
    new-instance v0, Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

    const-string v1, "OFFICIAL"

    invoke-direct {v0, v1, v4}, Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;->OFFICIAL:Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

    sget-object v1, Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;->DEV:Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;->GRAY:Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;->OFFICIAL:Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;->$VALUES:[Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

    return-object v0
.end method

.method public static values()[Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;->$VALUES:[Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

    invoke-virtual {v0}, [Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

    return-object v0
.end method
