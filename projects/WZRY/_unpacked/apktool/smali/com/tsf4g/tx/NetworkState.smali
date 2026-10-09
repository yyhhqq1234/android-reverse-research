.class final enum Lcom/tsf4g/tx/NetworkState;
.super Ljava/lang/Enum;
.source "NetworkStateChecker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tsf4g/tx/NetworkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tsf4g/tx/NetworkState;

.field public static final enum NotReachable:Lcom/tsf4g/tx/NetworkState;

.field public static final enum ReachableViaWWAN:Lcom/tsf4g/tx/NetworkState;

.field public static final enum ReachableViaWiFi:Lcom/tsf4g/tx/NetworkState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/tsf4g/tx/NetworkState;

    const-string v1, "NotReachable"

    invoke-direct {v0, v1, v2}, Lcom/tsf4g/tx/NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tsf4g/tx/NetworkState;->NotReachable:Lcom/tsf4g/tx/NetworkState;

    .line 11
    new-instance v0, Lcom/tsf4g/tx/NetworkState;

    const-string v1, "ReachableViaWWAN"

    invoke-direct {v0, v1, v3}, Lcom/tsf4g/tx/NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tsf4g/tx/NetworkState;->ReachableViaWWAN:Lcom/tsf4g/tx/NetworkState;

    .line 12
    new-instance v0, Lcom/tsf4g/tx/NetworkState;

    const-string v1, "ReachableViaWiFi"

    invoke-direct {v0, v1, v4}, Lcom/tsf4g/tx/NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tsf4g/tx/NetworkState;->ReachableViaWiFi:Lcom/tsf4g/tx/NetworkState;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tsf4g/tx/NetworkState;

    sget-object v1, Lcom/tsf4g/tx/NetworkState;->NotReachable:Lcom/tsf4g/tx/NetworkState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tsf4g/tx/NetworkState;->ReachableViaWWAN:Lcom/tsf4g/tx/NetworkState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tsf4g/tx/NetworkState;->ReachableViaWiFi:Lcom/tsf4g/tx/NetworkState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tsf4g/tx/NetworkState;->ENUM$VALUES:[Lcom/tsf4g/tx/NetworkState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tsf4g/tx/NetworkState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/tsf4g/tx/NetworkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tsf4g/tx/NetworkState;

    return-object v0
.end method

.method public static values()[Lcom/tsf4g/tx/NetworkState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tsf4g/tx/NetworkState;->ENUM$VALUES:[Lcom/tsf4g/tx/NetworkState;

    array-length v1, v0

    new-array v2, v1, [Lcom/tsf4g/tx/NetworkState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
