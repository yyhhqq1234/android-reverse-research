.class public Lcom/netease/environment/config/SdkData;
.super Ljava/lang/Object;
.source "SdkData.java"


# static fields
.field private static sContext:Landroid/content/Context;

.field private static sGameId:Ljava/lang/String;

.field private static sHost:Ljava/lang/String;

.field private static sIfTest:Z

.field private static sMode:Ljava/lang/String;

.field private static sRC4Key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/environment/config/SdkData;->sIfTest:Z

    .line 15
    const-string v0, "normal"

    sput-object v0, Lcom/netease/environment/config/SdkData;->sMode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/netease/environment/config/SdkData;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getGameId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/netease/environment/config/SdkData;->sGameId:Ljava/lang/String;

    return-object v0
.end method

.method public static getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/netease/environment/config/SdkData;->sHost:Ljava/lang/String;

    return-object v0
.end method

.method public static getIfTest()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/netease/environment/config/SdkData;->sIfTest:Z

    return v0
.end method

.method public static getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/netease/environment/config/SdkData;->sMode:Ljava/lang/String;

    return-object v0
.end method

.method public static getRC4Key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/netease/environment/config/SdkData;->sRC4Key:Ljava/lang/String;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/netease/environment/config/SdkData;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static setGameId(Ljava/lang/String;)V
    .locals 0
    .param p0, "gameId"    # Ljava/lang/String;

    .prologue
    .line 19
    sput-object p0, Lcom/netease/environment/config/SdkData;->sGameId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static setHost(Ljava/lang/String;)V
    .locals 0
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 60
    sput-object p0, Lcom/netease/environment/config/SdkData;->sHost:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static setIfTest(Z)V
    .locals 0
    .param p0, "ifTest"    # Z

    .prologue
    .line 44
    sput-boolean p0, Lcom/netease/environment/config/SdkData;->sIfTest:Z

    .line 45
    return-void
.end method

.method public static setMode(Ljava/lang/String;)V
    .locals 0
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 52
    sput-object p0, Lcom/netease/environment/config/SdkData;->sMode:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static setRC4Key(Ljava/lang/String;)V
    .locals 0
    .param p0, "rc4Key"    # Ljava/lang/String;

    .prologue
    .line 27
    sput-object p0, Lcom/netease/environment/config/SdkData;->sRC4Key:Ljava/lang/String;

    .line 28
    return-void
.end method
