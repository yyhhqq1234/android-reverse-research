.class final enum Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;
.super Ljava/lang/Enum;
.source "DevPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/hawk/bridge/DevPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CPU_FREQ"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;

.field public static final enum MAX:Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;

.field public static final enum MIN:Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 381
    new-instance v0, Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;

    const-string v1, "MIN"

    invoke-direct {v0, v1, v2}, Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;->MIN:Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;

    new-instance v0, Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;

    const-string v1, "MAX"

    invoke-direct {v0, v1, v3}, Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;->MAX:Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;

    .line 380
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;

    sget-object v1, Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;->MIN:Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;->MAX:Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;->ENUM$VALUES:[Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;

    return-object v0
.end method

.method public static values()[Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;->ENUM$VALUES:[Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
