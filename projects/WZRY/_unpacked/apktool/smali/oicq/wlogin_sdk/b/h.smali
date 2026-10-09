.class public Loicq/wlogin_sdk/b/h;
.super Loicq/wlogin_sdk/b/b;
.source "tlv_t105.java"


# instance fields
.field a:I

.field i:I

.field j:I

.field k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    .line 7
    iput v0, p0, Loicq/wlogin_sdk/b/h;->a:I

    .line 8
    iput v0, p0, Loicq/wlogin_sdk/b/h;->i:I

    .line 9
    iput v0, p0, Loicq/wlogin_sdk/b/h;->j:I

    .line 10
    iput v0, p0, Loicq/wlogin_sdk/b/h;->k:I

    .line 13
    const/16 v0, 0x105

    iput v0, p0, Loicq/wlogin_sdk/b/h;->h:I

    .line 14
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 5

    .prologue
    .line 31
    iget v0, p0, Loicq/wlogin_sdk/b/h;->a:I

    new-array v0, v0, [B

    .line 32
    iget v1, p0, Loicq/wlogin_sdk/b/h;->a:I

    if-gtz v1, :cond_0

    .line 35
    :goto_0
    return-object v0

    .line 34
    :cond_0
    iget-object v1, p0, Loicq/wlogin_sdk/b/h;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/h;->j:I

    const/4 v3, 0x0

    iget v4, p0, Loicq/wlogin_sdk/b/h;->a:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 17
    iget v0, p0, Loicq/wlogin_sdk/b/h;->f:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 18
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 27
    :goto_0
    return-object v0

    .line 19
    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/b/h;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/h;->e:I

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    iput v0, p0, Loicq/wlogin_sdk/b/h;->i:I

    .line 20
    iget v0, p0, Loicq/wlogin_sdk/b/h;->f:I

    iget v1, p0, Loicq/wlogin_sdk/b/h;->i:I

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    .line 21
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Loicq/wlogin_sdk/b/h;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/h;->e:I

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/h;->i:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    iput v0, p0, Loicq/wlogin_sdk/b/h;->a:I

    .line 23
    iget v0, p0, Loicq/wlogin_sdk/b/h;->f:I

    iget v1, p0, Loicq/wlogin_sdk/b/h;->i:I

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/h;->a:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    .line 24
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_2
    iget v0, p0, Loicq/wlogin_sdk/b/h;->e:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Loicq/wlogin_sdk/b/h;->k:I

    .line 26
    iget v0, p0, Loicq/wlogin_sdk/b/h;->i:I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Loicq/wlogin_sdk/b/h;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Loicq/wlogin_sdk/b/h;->j:I

    .line 27
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public g()[B
    .locals 5

    .prologue
    .line 39
    iget v0, p0, Loicq/wlogin_sdk/b/h;->i:I

    new-array v0, v0, [B

    .line 40
    iget v1, p0, Loicq/wlogin_sdk/b/h;->i:I

    if-gtz v1, :cond_0

    .line 43
    :goto_0
    return-object v0

    .line 42
    :cond_0
    iget-object v1, p0, Loicq/wlogin_sdk/b/h;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/h;->k:I

    const/4 v3, 0x0

    iget v4, p0, Loicq/wlogin_sdk/b/h;->i:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
