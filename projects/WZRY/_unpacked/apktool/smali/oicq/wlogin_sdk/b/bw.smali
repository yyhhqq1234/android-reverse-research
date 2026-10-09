.class public Loicq/wlogin_sdk/b/bw;
.super Loicq/wlogin_sdk/b/b;
.source "tlv_t185.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    .line 9
    const/16 v0, 0x185

    iput v0, p0, Loicq/wlogin_sdk/b/bw;->h:I

    .line 10
    return-void
.end method


# virtual methods
.method public a(I)[B
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 17
    invoke-static {v1, v0, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 19
    invoke-static {v1, v2, p1}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 22
    iget v0, p0, Loicq/wlogin_sdk/b/bw;->h:I

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/b/bw;->b(I)V

    .line 23
    array-length v0, v1

    invoke-virtual {p0, v1, v0}, Loicq/wlogin_sdk/b/bw;->c([BI)V

    .line 24
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/bw;->e()V

    .line 26
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/bw;->b()[B

    move-result-object v0

    return-object v0
.end method
