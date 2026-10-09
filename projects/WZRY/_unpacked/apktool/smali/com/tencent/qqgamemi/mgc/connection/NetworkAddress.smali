.class public Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;
.super Ljava/lang/Object;
.source "NetworkAddress.java"


# static fields
.field private static final SERAIL_DIVIDER:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "NetworkAddress"


# instance fields
.field public ipAddr:Ljava/lang/String;

.field public port:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->ipAddr:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->port:I

    .line 22
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;
    .locals 7
    .param p0, "stream"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-object v0

    .line 107
    :cond_1
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "fields":[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 112
    const/4 v5, 0x0

    aget-object v3, v2, v5

    .line 113
    .local v3, "ipAddr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 116
    const/4 v4, 0x0

    .line 118
    .local v4, "port":I
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 123
    new-instance v0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;-><init>()V

    .line 124
    .local v0, "address":Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;
    iput-object v3, v0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->ipAddr:Ljava/lang/String;

    .line 125
    iput v4, v0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->port:I

    goto :goto_0

    .line 119
    .end local v0    # "address":Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;
    .locals 6
    .param p0, "ipAddr"    # Ljava/lang/String;
    .param p1, "proxyStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    :cond_0
    const-string v3, "NetworkAddress"

    const-string v4, "NetworkAddress.fromString: null test host"

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    return-object v0

    .line 85
    :cond_1
    const/4 v2, 0x0

    .line 86
    .local v2, "port":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 88
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 95
    :cond_2
    new-instance v0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;-><init>()V

    .line 96
    .local v0, "address":Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;
    iput-object p0, v0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->ipAddr:Ljava/lang/String;

    .line 97
    iput v2, v0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->port:I

    goto :goto_0

    .line 89
    .end local v0    # "address":Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v3, "NetworkAddress"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkAddress.fromString: wrong test port["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static split(Ljava/util/List;[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "hosts"    # [Ljava/lang/String;
    .param p2, "ports"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;",
            ">;[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 73
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;

    .line 74
    .local v0, "address":Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;
    iget-object v2, v0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->ipAddr:Ljava/lang/String;

    aput-object v2, p1, v1

    .line 75
    iget v2, v0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->port:I

    aput v2, p2, v1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "address":Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 55
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;

    if-nez v2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 58
    check-cast v0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;

    .line 60
    .local v0, "other":Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;
    iget-object v2, v0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->ipAddr:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->ipAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->port:I

    iget v3, p0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->port:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getIpAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->ipAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "hash":I
    iget-object v1, p0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->ipAddr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    iget v1, p0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    return v0
.end method

.method public serialString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->ipAddr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, ""

    .line 50
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->ipAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setIpAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipAddr"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->ipAddr:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->port:I

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "IP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->ipAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
