.class public Loicq/wlogin_sdk/b/cd;
.super Loicq/wlogin_sdk/b/b;
.source "tlv_t194.java"


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/b/cd;->a:I

    .line 7
    const/16 v0, 0x194

    iput v0, p0, Loicq/wlogin_sdk/b/cd;->h:I

    .line 8
    return-void
.end method


# virtual methods
.method public a([B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11
    if-nez p1, :cond_0

    .line 12
    const/16 v0, 0x10

    new-array p1, v0, [B

    .line 15
    :cond_0
    array-length v0, p1

    iput v0, p0, Loicq/wlogin_sdk/b/cd;->a:I

    .line 16
    iget v0, p0, Loicq/wlogin_sdk/b/cd;->a:I

    new-array v0, v0, [B

    .line 17
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget v1, p0, Loicq/wlogin_sdk/b/cd;->h:I

    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/b/cd;->b(I)V

    .line 20
    iget v1, p0, Loicq/wlogin_sdk/b/cd;->a:I

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/b/cd;->c([BI)V

    .line 21
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/cd;->e()V

    .line 23
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/cd;->b()[B

    move-result-object v0

    return-object v0
.end method
