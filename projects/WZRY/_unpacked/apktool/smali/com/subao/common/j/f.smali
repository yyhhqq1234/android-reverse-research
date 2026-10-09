.class public Lcom/subao/common/j/f;
.super Ljava/lang/Object;
.source "MobileNetTypeDetector.java"


# direct methods
.method public static a(I)Lcom/subao/common/j/j$a;
    .locals 1

    .prologue
    .line 17
    packed-switch p0, :pswitch_data_0

    .line 39
    const/16 v0, 0x13

    if-lt p0, v0, :cond_0

    .line 41
    sget-object v0, Lcom/subao/common/j/j$a;->f:Lcom/subao/common/j/j$a;

    .line 43
    :goto_0
    return-object v0

    .line 24
    :pswitch_0
    sget-object v0, Lcom/subao/common/j/j$a;->d:Lcom/subao/common/j/j$a;

    goto :goto_0

    .line 35
    :pswitch_1
    sget-object v0, Lcom/subao/common/j/j$a;->e:Lcom/subao/common/j/j$a;

    goto :goto_0

    .line 37
    :pswitch_2
    sget-object v0, Lcom/subao/common/j/j$a;->f:Lcom/subao/common/j/j$a;

    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Lcom/subao/common/j/j$a;->b:Lcom/subao/common/j/j$a;

    goto :goto_0

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
