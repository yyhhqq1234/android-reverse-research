.class public Loicq/wlogin_sdk/b/bs;
.super Loicq/wlogin_sdk/b/b;
.source "tlv_t18.java"


# instance fields
.field a:I

.field i:I

.field j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    .line 8
    const/16 v0, 0x16

    iput v0, p0, Loicq/wlogin_sdk/b/bs;->a:I

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/b/bs;->i:I

    .line 10
    const/16 v0, 0x600

    iput v0, p0, Loicq/wlogin_sdk/b/bs;->j:I

    .line 13
    const/16 v0, 0x18

    iput v0, p0, Loicq/wlogin_sdk/b/bs;->h:I

    .line 14
    return-void
.end method


# virtual methods
.method public a(JIJI)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 18
    .line 19
    iget v0, p0, Loicq/wlogin_sdk/b/bs;->a:I

    new-array v0, v0, [B

    .line 21
    iget v1, p0, Loicq/wlogin_sdk/b/bs;->i:I

    invoke-static {v0, v3, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 22
    const/4 v1, 0x2

    .line 23
    iget v2, p0, Loicq/wlogin_sdk/b/bs;->j:I

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 24
    const/4 v1, 0x6

    .line 25
    long-to-int v2, p1

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 26
    const/16 v1, 0xa

    .line 27
    invoke-static {v0, v1, p3}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 28
    const/16 v1, 0xe

    .line 29
    long-to-int v2, p4

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 30
    const/16 v1, 0x12

    .line 31
    invoke-static {v0, v1, p6}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 32
    const/16 v1, 0x14

    .line 33
    invoke-static {v0, v1, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 36
    iget v1, p0, Loicq/wlogin_sdk/b/bs;->h:I

    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/b/bs;->b(I)V

    .line 37
    iget v1, p0, Loicq/wlogin_sdk/b/bs;->a:I

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/b/bs;->c([BI)V

    .line 38
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/bs;->e()V

    .line 40
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/bs;->b()[B

    move-result-object v0

    return-object v0
.end method
