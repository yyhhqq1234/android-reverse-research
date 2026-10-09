.class public Lcom/netease/cc/newlive/LiveEventMap;
.super Ljava/lang/Object;
.source "LiveEventMap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapTo(I)I
    .locals 1

    const/16 v0, 0x3ee

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3f9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    return p0

    :pswitch_0
    const/16 p0, 0x3f4

    return p0

    :pswitch_1
    const/16 p0, 0x3f3

    return p0

    :pswitch_2
    const/16 p0, 0xbba

    return p0

    :pswitch_3
    const/16 p0, 0x3eb

    return p0

    :pswitch_4
    const/16 p0, 0x3ea

    return p0

    :pswitch_5
    const/16 p0, 0x3e9

    return p0

    :pswitch_6
    const/16 p0, -0xfa1

    return p0

    :pswitch_7
    const/16 p0, 0x3ed

    return p0

    :pswitch_8
    const/16 p0, 0x3ef

    return p0

    :pswitch_9
    const/16 p0, 0x3f0

    return p0

    :pswitch_a
    const/16 p0, 0x3ec

    return p0

    :cond_0
    return v0

    :cond_1
    const/16 p0, 0x3f5

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0xfa6
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3f2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
