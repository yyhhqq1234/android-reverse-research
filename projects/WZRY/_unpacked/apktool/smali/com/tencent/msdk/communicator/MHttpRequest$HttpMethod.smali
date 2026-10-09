.class public final enum Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;
.super Ljava/lang/Enum;
.source "MHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/communicator/MHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

.field public static final enum DELETE:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

.field public static final enum GET:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

.field public static final enum POST:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

.field public static final enum PUT:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;->GET:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    new-instance v0, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;->POST:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    new-instance v0, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;->PUT:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    new-instance v0, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;->DELETE:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    sget-object v1, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;->GET:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;->POST:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;->PUT:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;->DELETE:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;->$VALUES:[Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;->$VALUES:[Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    invoke-virtual {v0}, [Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    return-object v0
.end method
