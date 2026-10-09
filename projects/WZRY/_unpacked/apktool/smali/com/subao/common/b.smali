.class public Lcom/subao/common/b;
.super Ljava/lang/Object;
.source "ErrorCode.java"


# direct methods
.method public static a(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 315
    packed-switch p0, :pswitch_data_0

    .line 332
    :pswitch_0
    const/16 v1, 0x834

    if-lt p0, v1, :cond_0

    const/16 v1, 0x898

    if-gt p0, v1, :cond_0

    .line 337
    :goto_0
    :pswitch_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x7d3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
