.class public Lcom/tencent/igame/priority/sdk/env/Env;
.super Ljava/lang/Object;


# static fields
.field public static final HTTP_LOG_REQUEST_URL:Ljava/lang/String; = "https://netbar.qq.com/LogCollection"

.field private static a:I

.field protected static a:Ljava/lang/String;

.field protected static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "255.255.255.255"

    sput-object v0, Lcom/tencent/igame/priority/sdk/env/Env;->a:Ljava/lang/String;

    const-string v0, "255.255.255.255"

    sput-object v0, Lcom/tencent/igame/priority/sdk/env/Env;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/igame/priority/sdk/env/Env;->c:Ljava/lang/String;

    const-string v0, "igameapp.qq.com"

    sput-object v0, Lcom/tencent/igame/priority/sdk/env/Env;->d:Ljava/lang/String;

    const/16 v0, 0x1680

    sput v0, Lcom/tencent/igame/priority/sdk/env/Env;->a:I

    const-string v0, "https://netbar.qq.com/power/api/AppApi/enter"

    sput-object v0, Lcom/tencent/igame/priority/sdk/env/Env;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnvName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/igame/priority/sdk/env/Env;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getHeartbeatDelay()I
    .locals 1

    const v0, 0xea60

    return v0
.end method

.method public static getHostAddr()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/igame/priority/sdk/env/Env;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getHostPort()I
    .locals 1

    sget v0, Lcom/tencent/igame/priority/sdk/env/Env;->a:I

    return v0
.end method

.method public static getHttpRequestUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/igame/priority/sdk/env/Env;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static getUdpIp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/igame/priority/sdk/env/Env;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static isBroadcast()Z
    .locals 2

    sget-object v0, Lcom/tencent/igame/priority/sdk/env/Env;->b:Ljava/lang/String;

    sget-object v1, Lcom/tencent/igame/priority/sdk/env/Env;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setUdpBroadcastIp(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/igame/priority/sdk/env/Env;->b:Ljava/lang/String;

    return-void
.end method

.method public static setUdpIp(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/igame/priority/sdk/env/Env;->a:Ljava/lang/String;

    return-void
.end method
