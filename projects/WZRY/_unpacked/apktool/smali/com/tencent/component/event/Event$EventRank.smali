.class public final enum Lcom/tencent/component/event/Event$EventRank;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x6
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/event/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventRank"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/component/event/Event$EventRank;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/component/event/Event$EventRank;

.field public static final enum CORE:Lcom/tencent/component/event/Event$EventRank;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation
.end field

.field public static final enum NORMAL:Lcom/tencent/component/event/Event$EventRank;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation
.end field

.field public static final enum SYSTEM:Lcom/tencent/component/event/Event$EventRank;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/tencent/component/event/Event$EventRank;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/tencent/component/event/Event$EventRank;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/component/event/Event$EventRank;->NORMAL:Lcom/tencent/component/event/Event$EventRank;

    .line 56
    new-instance v0, Lcom/tencent/component/event/Event$EventRank;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v3}, Lcom/tencent/component/event/Event$EventRank;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/component/event/Event$EventRank;->SYSTEM:Lcom/tencent/component/event/Event$EventRank;

    .line 61
    new-instance v0, Lcom/tencent/component/event/Event$EventRank;

    const-string v1, "CORE"

    invoke-direct {v0, v1, v4}, Lcom/tencent/component/event/Event$EventRank;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/component/event/Event$EventRank;->CORE:Lcom/tencent/component/event/Event$EventRank;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/component/event/Event$EventRank;

    sget-object v1, Lcom/tencent/component/event/Event$EventRank;->NORMAL:Lcom/tencent/component/event/Event$EventRank;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/component/event/Event$EventRank;->SYSTEM:Lcom/tencent/component/event/Event$EventRank;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/component/event/Event$EventRank;->CORE:Lcom/tencent/component/event/Event$EventRank;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/component/event/Event$EventRank;->$VALUES:[Lcom/tencent/component/event/Event$EventRank;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/component/event/Event$EventRank;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/tencent/component/event/Event$EventRank;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/event/Event$EventRank;

    return-object v0
.end method

.method public static values()[Lcom/tencent/component/event/Event$EventRank;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/tencent/component/event/Event$EventRank;->$VALUES:[Lcom/tencent/component/event/Event$EventRank;

    invoke-virtual {v0}, [Lcom/tencent/component/event/Event$EventRank;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/component/event/Event$EventRank;

    return-object v0
.end method
