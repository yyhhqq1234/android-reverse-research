.class public Loicq/wlogin_sdk/b/cm;
.super Loicq/wlogin_sdk/b/b;
.source "tlv_t401.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    .line 7
    const/16 v0, 0x401

    iput v0, p0, Loicq/wlogin_sdk/b/cm;->h:I

    .line 8
    return-void
.end method


# virtual methods
.method public a([B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    const/16 v0, 0x10

    new-array p1, v0, [B

    .line 16
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    .line 19
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    array-length v1, p1

    add-int/2addr v1, v2

    .line 22
    iget v1, p0, Loicq/wlogin_sdk/b/cm;->h:I

    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/b/cm;->b(I)V

    .line 23
    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/b/cm;->c([BI)V

    .line 24
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/cm;->e()V

    .line 26
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/cm;->b()[B

    move-result-object v0

    return-object v0
.end method
