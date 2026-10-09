.class public Lcom/tencent/tga/livesdk/uitl/DomainUitl;
.super Ljava/lang/Object;
.source "DomainUitl.java"


# static fields
.field public static final DOMAIN:Ljava/lang/String; = "conn.tga.qq.com"

.field private static final TAG:Ljava/lang/String; = "DomainUitl"

.field private static httpDns:Ljava/lang/String;

.field public static ip:Ljava/lang/String;

.field public static userIp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "-1"

    sput-object v0, Lcom/tencent/tga/livesdk/uitl/DomainUitl;->httpDns:Ljava/lang/String;

    .line 10
    const-string v0, ""

    sput-object v0, Lcom/tencent/tga/livesdk/uitl/DomainUitl;->userIp:Ljava/lang/String;

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/tencent/tga/livesdk/uitl/DomainUitl;->ip:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHttpip()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/tencent/tga/livesdk/uitl/DomainUitl;->userIp:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tga/livesdk/uitl/DomainUitl;->userIp:Ljava/lang/String;

    const-string v1, "conn.tga.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Lcom/tencent/tga/livesdk/uitl/DomainUitl;->getUserIP()Ljava/lang/String;

    move-result-object v0

    .line 18
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/tga/livesdk/uitl/DomainUitl;->userIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":80"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUserIP()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    const-string v0, "-1"

    sget-object v1, Lcom/tencent/tga/livesdk/uitl/DomainUitl;->httpDns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "conn.tga.qq.com"

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    sget-object v0, Lcom/tencent/tga/livesdk/uitl/DomainUitl;->httpDns:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    sget-object v1, Lcom/tencent/tga/livesdk/uitl/DomainUitl;->httpDns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/tga/livesdk/uitl/DomainUitl;->httpDns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":80"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "conn.tga.qq.com"

    goto :goto_0
.end method
