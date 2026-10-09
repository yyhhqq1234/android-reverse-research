.class public Lcom/tencent/mna/base/e/b;
.super Ljava/lang/Object;
.source "UpnpDeviceScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/e/b$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/tencent/mna/base/e/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "UpnpDeviceScanner"

    sput-object v0, Lcom/tencent/mna/base/e/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/tencent/mna/base/e/b$a;->a(Landroid/content/Context;)Lcom/tencent/mna/base/e/b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/base/e/b;->b:Lcom/tencent/mna/base/e/b$a;

    .line 34
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/tencent/mna/base/e/b;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/tencent/mna/base/e/a;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/tencent/mna/base/e/b;->b:Lcom/tencent/mna/base/e/b$a;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/mna/base/e/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": getGateWayDevice socket is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 69
    :goto_0
    return-object v1

    .line 44
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/base/e/b;->b:Lcom/tencent/mna/base/e/b$a;

    const-string v2, "ST:urn:schemas-upnp-org:device:InternetGatewayDevice:1"

    invoke-virtual {v0, v2}, Lcom/tencent/mna/base/e/b$a;->a(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x2

    .line 48
    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_4

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tencent/mna/base/e/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": getGateWayDevice wait for dev response"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/tencent/mna/base/e/b;->b:Lcom/tencent/mna/base/e/b$a;

    invoke-virtual {v0}, Lcom/tencent/mna/base/e/b$a;->a()Ljava/net/DatagramPacket;

    move-result-object v0

    .line 52
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 53
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/tencent/mna/base/e/a;->a(Ljava/lang/String;)Lcom/tencent/mna/base/e/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 58
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/mna/base/e/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": getGateWayDevice found gateway device and stop receive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :goto_2
    iget-object v1, p0, Lcom/tencent/mna/base/e/b;->b:Lcom/tencent/mna/base/e/b$a;

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/tencent/mna/base/e/b;->b:Lcom/tencent/mna/base/e/b$a;

    invoke-virtual {v1}, Lcom/tencent/mna/base/e/b$a;->b()V

    :cond_1
    :goto_3
    move-object v1, v0

    .line 69
    goto :goto_0

    :cond_2
    move v0, v2

    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 63
    :goto_4
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/mna/base/e/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": getGateWayDevice socket time out and stop receive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    iget-object v1, p0, Lcom/tencent/mna/base/e/b;->b:Lcom/tencent/mna/base/e/b$a;

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/tencent/mna/base/e/b;->b:Lcom/tencent/mna/base/e/b$a;

    invoke-virtual {v1}, Lcom/tencent/mna/base/e/b$a;->b()V

    goto :goto_3

    .line 65
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/base/e/b;->b:Lcom/tencent/mna/base/e/b$a;

    if-eqz v1, :cond_3

    .line 66
    iget-object v1, p0, Lcom/tencent/mna/base/e/b;->b:Lcom/tencent/mna/base/e/b$a;

    invoke-virtual {v1}, Lcom/tencent/mna/base/e/b$a;->b()V

    :cond_3
    throw v0

    .line 62
    :catch_1
    move-exception v1

    goto :goto_4

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
