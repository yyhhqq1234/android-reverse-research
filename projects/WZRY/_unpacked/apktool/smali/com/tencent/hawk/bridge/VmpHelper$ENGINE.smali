.class public final enum Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;
.super Ljava/lang/Enum;
.source "VmpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/hawk/bridge/VmpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ENGINE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

.field public static final enum UNITY:Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

.field public static final enum UNRAL:Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 277
    new-instance v0, Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

    const-string v1, "UNITY"

    invoke-direct {v0, v1, v2}, Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;->UNITY:Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

    new-instance v0, Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

    const-string v1, "UNRAL"

    invoke-direct {v0, v1, v3}, Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;->UNRAL:Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

    .line 276
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

    sget-object v1, Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;->UNITY:Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;->UNRAL:Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;->ENUM$VALUES:[Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

    return-object v0
.end method

.method public static values()[Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;->ENUM$VALUES:[Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
