.class public Lcom/subao/common/e/r;
.super Lcom/subao/common/e/x;
.source "GameServerIpDownloader.java"


# direct methods
.method private constructor <init>(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/subao/common/e/x;-><init>(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)V

    .line 15
    return-void
.end method

.method synthetic constructor <init>(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;Lcom/subao/common/e/r$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/subao/common/e/r;-><init>(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)V

    return-void
.end method

.method public static d()Lcom/subao/common/e/x$a;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/subao/common/e/r$1;

    invoke-direct {v0}, Lcom/subao/common/e/r$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "configs/gip"

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "game-ip"

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "key_game_server_ip"

    return-object v0
.end method
