.class public Lcom/subao/common/k/e;
.super Ljava/lang/Object;
.source "NetworkWatcherNetworkImpl.java"

# interfaces
.implements Lcom/subao/common/k/b$b;


# instance fields
.field private final a:Landroid/net/Network;


# direct methods
.method public constructor <init>(Landroid/net/Network;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null network"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/subao/common/k/e;->a:Landroid/net/Network;

    .line 28
    return-void
.end method

.method static a(Landroid/net/Network;)I
    .locals 2

    .prologue
    .line 32
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "netId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 36
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 39
    :catch_0
    move-exception v0

    .line 41
    :cond_0
    new-instance v0, Lcom/subao/common/k/b$d;

    const/16 v1, 0x7da

    invoke-direct {v0, v1}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v0
.end method

.method static a(Ljava/net/DatagramSocket;II)V
    .locals 5

    .prologue
    .line 46
    :try_start_0
    const-string v0, "android.net.NetworkUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    const-string v1, "bindSocketToNetwork"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    .line 51
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 59
    :cond_0
    new-instance v0, Lcom/subao/common/k/b$d;

    const/16 v1, 0x7dd

    invoke-direct {v0, v1}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 100
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 101
    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/subao/common/k/e;->a:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/net/DatagramSocket;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/16 v1, 0x15

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    .line 67
    new-instance v0, Lcom/subao/common/k/b$d;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v0

    .line 69
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/k/e;->a:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    new-instance v0, Lcom/subao/common/k/b$d;

    const/16 v1, 0x7d9

    invoke-direct {v0, v1}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 79
    new-instance v0, Lcom/subao/common/k/b$d;

    const/16 v1, 0x7e1

    invoke-direct {v0, v1}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/subao/common/k/e;->a:Landroid/net/Network;

    invoke-static {v0}, Lcom/subao/common/k/e;->a(Landroid/net/Network;)I

    move-result v0

    .line 84
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 85
    if-nez v1, :cond_2

    .line 86
    new-instance v0, Lcom/subao/common/k/b$d;

    const/16 v1, 0x7db

    invoke-direct {v0, v1}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v0

    .line 90
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 94
    invoke-static {p1, v1, v0}, Lcom/subao/common/k/e;->a(Ljava/net/DatagramSocket;II)V

    goto :goto_0

    .line 91
    :catch_2
    move-exception v0

    .line 92
    new-instance v0, Lcom/subao/common/k/b$d;

    const/16 v1, 0x7dc

    invoke-direct {v0, v1}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 115
    if-nez p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    if-ne p1, p0, :cond_2

    .line 119
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    :cond_2
    instance-of v1, p1, Lcom/subao/common/k/e;

    if-eqz v1, :cond_0

    .line 124
    check-cast p1, Lcom/subao/common/k/e;

    .line 125
    iget-object v0, p0, Lcom/subao/common/k/e;->a:Landroid/net/Network;

    iget-object v1, p1, Lcom/subao/common/k/e;->a:Landroid/net/Network;

    invoke-static {v0, v1}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/subao/common/k/e;->a:Landroid/net/Network;

    invoke-virtual {v0}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
