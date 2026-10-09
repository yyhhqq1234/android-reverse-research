.class public Loicq/wlogin_sdk/b/an;
.super Loicq/wlogin_sdk/b/b;
.source "tlv_t143.java"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/b/an;->a:I

    .line 7
    const/16 v0, 0x143

    iput v0, p0, Loicq/wlogin_sdk/b/an;->h:I

    .line 8
    return-void
.end method


# virtual methods
.method public a([B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12
    array-length v0, p1

    iput v0, p0, Loicq/wlogin_sdk/b/an;->a:I

    .line 13
    iget v0, p0, Loicq/wlogin_sdk/b/an;->a:I

    new-array v0, v0, [B

    .line 16
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget v1, p0, Loicq/wlogin_sdk/b/an;->h:I

    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/b/an;->b(I)V

    .line 19
    iget v1, p0, Loicq/wlogin_sdk/b/an;->a:I

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/b/an;->c([BI)V

    .line 20
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/an;->e()V

    .line 22
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/an;->b()[B

    move-result-object v0

    return-object v0
.end method
