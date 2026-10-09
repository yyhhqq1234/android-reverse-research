.class public abstract Lcom/tencent/igame/priority/sdk/d/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/igame/priority/sdk/d/a/c;

.field private a:Lcom/tencent/igame/priority/sdk/d/a/e;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Default"

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Ljava/lang/String;

    const-string v0, "igame_priority_sdk_pref_wzry_key_corp_id"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/e/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/igame/priority/sdk/d/a/b;->a()I

    move-result v0

    const/16 v1, 0x1900

    if-ne v0, v1, :cond_0

    const-string v0, "IG630e5UYVZ7mIogN0gljXVt2ArR6d1n"

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->b:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "igame_priority_sdk_pref_wzry_key_request_key"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/e/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private a()Lcom/tencent/igame/priority/sdk/d/b/d;
    .locals 6

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/igame/priority/sdk/d/a/b;->a()[B

    move-result-object v3

    :try_start_0
    new-instance v0, Lcom/tencent/igame/priority/sdk/d/a/e;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/tencent/igame/priority/sdk/d/a/e;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Lcom/tencent/igame/priority/sdk/d/a/e;

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Lcom/tencent/igame/priority/sdk/d/a/e;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/a/e;->a()V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Lcom/tencent/igame/priority/sdk/d/a/e;

    invoke-virtual {v0, v3}, Lcom/tencent/igame/priority/sdk/d/a/e;->a([B)V
    :try_end_0
    .catch Lcom/tencent/igame/priority/sdk/exception/UdpException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v0, v1

    :goto_1
    if-eqz v2, :cond_0

    :try_start_1
    iget-object v1, v2, Lcom/tencent/igame/priority/sdk/d/b/d;->a:[B

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v4, v2, Lcom/tencent/igame/priority/sdk/d/b/d;->a:[B

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "corpid"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    new-instance v0, Lcom/tencent/igame/priority/sdk/exception/MoreErrorException;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/exception/MoreErrorException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Lcom/tencent/igame/priority/sdk/d/a/e;

    invoke-virtual {v1}, Lcom/tencent/igame/priority/sdk/d/a/e;->b()V

    throw v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/igame/priority/sdk/env/Env;->isBroadcast()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Lcom/tencent/igame/priority/sdk/d/a/e;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Lcom/tencent/igame/priority/sdk/d/a/e;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Lcom/tencent/igame/priority/sdk/d/a/e;

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Lcom/tencent/igame/priority/sdk/d/a/e;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/a/e;->a()V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Lcom/tencent/igame/priority/sdk/d/a/e;

    invoke-virtual {v0, v3}, Lcom/tencent/igame/priority/sdk/d/a/e;->a([B)V

    goto :goto_0

    :cond_1
    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {p0, v3, v3}, Lcom/tencent/igame/priority/sdk/d/a/b;->a([B[B)Lcom/tencent/igame/priority/sdk/d/b/d;
    :try_end_2
    .catch Lcom/tencent/igame/priority/sdk/exception/DecryptException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Lcom/tencent/igame/priority/sdk/d/a/e;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/a/e;->b()V

    iput v5, v2, Lcom/tencent/igame/priority/sdk/d/b/d;->c:I

    return-object v2
.end method

.method private a([B)Lcom/tencent/igame/priority/sdk/d/b/d;
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v2, 0x13

    if-gt v0, v2, :cond_1

    :cond_0
    new-instance v0, Lcom/tencent/igame/priority/sdk/exception/NetErrorException;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/exception/NetErrorException;-><init>()V

    throw v0

    :cond_1
    new-instance v3, Lcom/tencent/igame/priority/sdk/d/b/d;

    invoke-direct {v3}, Lcom/tencent/igame/priority/sdk/d/b/d;-><init>()V

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_2

    rsub-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x8

    iget v4, v3, Lcom/tencent/igame/priority/sdk/d/b/d;->a:I

    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    shl-int v2, v5, v2

    add-int/2addr v2, v4

    iput v2, v3, Lcom/tencent/igame/priority/sdk/d/b/d;->a:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v6, :cond_3

    rsub-int/lit8 v4, v0, 0x1

    mul-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int v4, v5, v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-array v0, v2, [B

    const/4 v4, 0x4

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v3, Lcom/tencent/igame/priority/sdk/d/b/d;->a:Ljava/lang/String;

    array-length v0, p1

    add-int/lit8 v0, v0, -0x4

    sub-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, v3, Lcom/tencent/igame/priority/sdk/d/b/d;->a:[B

    add-int/lit8 v0, v2, 0x4

    iget-object v4, v3, Lcom/tencent/igame/priority/sdk/d/b/d;->a:[B

    array-length v5, p1

    add-int/lit8 v5, v5, -0x4

    sub-int v2, v5, v2

    invoke-static {p1, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v3, Lcom/tencent/igame/priority/sdk/d/b/d;->a:[B

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/igame/a/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/igame/priority/sdk/d/b/d;->a:[B

    iget-object v0, v3, Lcom/tencent/igame/priority/sdk/d/b/d;->a:[B

    if-eqz v0, :cond_4

    iget-object v0, v3, Lcom/tencent/igame/priority/sdk/d/b/d;->a:[B

    array-length v0, v0

    if-gtz v0, :cond_5

    :cond_4
    new-instance v0, Lcom/tencent/igame/priority/sdk/exception/DecryptException;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/exception/DecryptException;-><init>()V

    throw v0

    :cond_5
    return-object v3
.end method

.method private a()[B
    .locals 8

    const/4 v7, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tencent/igame/priority/sdk/d/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/igame/priority/sdk/d/a/b;->a()I

    move-result v2

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v3, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/tencent/igame/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    array-length v4, v3

    add-int/2addr v0, v4

    new-array v4, v0, [B

    move v0, v1

    :goto_0
    if-ge v0, v7, :cond_2

    const/4 v5, 0x2

    if-ge v0, v5, :cond_1

    rsub-int/lit8 v5, v0, 0x1

    mul-int/lit8 v5, v5, 0x8

    shr-int v5, v2, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    rsub-int/lit8 v5, v0, 0x3

    mul-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    shr-int v5, v6, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    array-length v2, v3

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4
.end method

.method private b(ILjava/net/SocketAddress;)Lcom/tencent/igame/priority/sdk/d/b/a;
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-ne p1, v2, :cond_1

    new-instance v0, Lcom/tencent/igame/priority/sdk/d/a/c;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/d/a/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Lcom/tencent/igame/priority/sdk/d/a/c;

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Lcom/tencent/igame/priority/sdk/d/a/c;

    invoke-virtual {v0, p2}, Lcom/tencent/igame/priority/sdk/d/a/c;->a(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Lcom/tencent/igame/priority/sdk/d/a/c;

    invoke-direct {p0}, Lcom/tencent/igame/priority/sdk/d/a/b;->a()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/d/a/c;->a([B)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Lcom/tencent/igame/priority/sdk/d/a/c;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/a/c;->a()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/igame/priority/sdk/d/a/b;->a([B)Lcom/tencent/igame/priority/sdk/d/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Lcom/tencent/igame/priority/sdk/d/a/c;

    invoke-virtual {v1}, Lcom/tencent/igame/priority/sdk/d/a/c;->a()V

    iput v2, v0, Lcom/tencent/igame/priority/sdk/d/b/d;->c:I

    :cond_0
    :goto_0
    new-instance v1, Lcom/tencent/igame/priority/sdk/d/b/a;

    invoke-direct {v1}, Lcom/tencent/igame/priority/sdk/d/b/a;-><init>()V

    if-eqz v0, :cond_3

    iget v2, v0, Lcom/tencent/igame/priority/sdk/d/b/d;->b:I

    if-nez v2, :cond_3

    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/igame/priority/sdk/d/b/d;->a:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/tencent/igame/priority/sdk/d/a/b;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/d/b/a;

    move-result-object v1

    :goto_1
    iget v0, v0, Lcom/tencent/igame/priority/sdk/d/b/d;->c:I

    invoke-virtual {v1, v0}, Lcom/tencent/igame/priority/sdk/d/b/a;->b(I)V

    return-object v1

    :cond_1
    const/4 v1, 0x3

    :cond_2
    if-lez v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/igame/priority/sdk/d/a/b;->a()Lcom/tencent/igame/priority/sdk/d/b/d;
    :try_end_0
    .catch Lcom/tencent/igame/priority/sdk/exception/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_2

    throw v2

    :cond_3
    if-eqz v0, :cond_4

    iget v2, v0, Lcom/tencent/igame/priority/sdk/d/b/d;->b:I

    invoke-virtual {v1, v2}, Lcom/tencent/igame/priority/sdk/d/b/a;->a(I)V

    goto :goto_1

    :cond_4
    const/16 v2, 0x99

    invoke-virtual {v1, v2}, Lcom/tencent/igame/priority/sdk/d/b/a;->a(I)V

    goto :goto_1
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(ILjava/net/SocketAddress;)Lcom/tencent/igame/priority/sdk/d/b/a;
    .locals 2

    new-instance v0, Lcom/tencent/igame/priority/sdk/d/b/a;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/d/b/a;-><init>()V

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/igame/priority/sdk/d/a/b;->b(ILjava/net/SocketAddress;)Lcom/tencent/igame/priority/sdk/d/b/a;
    :try_end_0
    .catch Lcom/tencent/igame/priority/sdk/exception/UdpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/tencent/igame/priority/sdk/exception/MoreErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/tencent/igame/priority/sdk/exception/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/tencent/igame/priority/sdk/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/tencent/igame/priority/sdk/exception/DecryptException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a(I)V

    goto :goto_0

    :catch_1
    move-exception v1

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a(I)V

    goto :goto_0

    :catch_2
    move-exception v1

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a(I)V

    goto :goto_0

    :catch_3
    move-exception v1

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a(I)V

    goto :goto_0

    :catch_4
    move-exception v1

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a(I)V

    goto :goto_0

    :catch_5
    move-exception v1

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a(I)V

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/d/b/a;
.end method

.method public a([B[B)Lcom/tencent/igame/priority/sdk/d/b/d;
    .locals 1

    :goto_0
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/b;->a:Lcom/tencent/igame/priority/sdk/d/a/e;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/a/e;->a()[B

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/tencent/igame/priority/sdk/d/a/b;->a([B)Lcom/tencent/igame/priority/sdk/d/b/d;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()Ljava/lang/String;
.end method
