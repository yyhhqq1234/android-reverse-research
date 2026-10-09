.class public Loicq/wlogin_sdk/b/bm;
.super Loicq/wlogin_sdk/b/b;
.source "tlv_t179.java"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/b/bm;->a:I

    .line 11
    const/16 v0, 0x179

    iput v0, p0, Loicq/wlogin_sdk/b/bm;->h:I

    .line 12
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 5

    .prologue
    .line 32
    iget v0, p0, Loicq/wlogin_sdk/b/bm;->a:I

    new-array v0, v0, [B

    .line 33
    iget-object v1, p0, Loicq/wlogin_sdk/b/bm;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/bm;->e:I

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    iget v4, p0, Loicq/wlogin_sdk/b/bm;->a:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    return-object v0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 15
    iget v0, p0, Loicq/wlogin_sdk/b/bm;->f:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 16
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    .line 22
    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/b/bm;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/bm;->e:I

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    .line 23
    iget v1, p0, Loicq/wlogin_sdk/b/bm;->f:I

    add-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_1

    .line 24
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 26
    :cond_1
    iput v0, p0, Loicq/wlogin_sdk/b/bm;->a:I

    .line 28
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
