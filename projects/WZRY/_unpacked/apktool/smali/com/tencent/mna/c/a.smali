.class public Lcom/tencent/mna/c/a;
.super Ljava/lang/Object;
.source "PlatformFactory.java"


# direct methods
.method public static a(I)Lcom/tencent/mna/b/a/f;
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAccelerator type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 32
    packed-switch p0, :pswitch_data_0

    .line 51
    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    new-instance v0, Lcom/tencent/mna/c/c/c;

    invoke-direct {v0}, Lcom/tencent/mna/c/c/c;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mna/c/c/c;->a()Lcom/tencent/mna/b/a/f;

    move-result-object v0

    goto :goto_0

    .line 37
    :pswitch_1
    new-instance v0, Lcom/tencent/mna/c/e/c;

    invoke-direct {v0}, Lcom/tencent/mna/c/e/c;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mna/c/e/c;->a()Lcom/tencent/mna/b/a/f;

    move-result-object v0

    goto :goto_0

    .line 40
    :pswitch_2
    new-instance v0, Lcom/tencent/mna/c/a/c;

    invoke-direct {v0}, Lcom/tencent/mna/c/a/c;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mna/c/a/c;->a()Lcom/tencent/mna/b/a/f;

    move-result-object v0

    goto :goto_0

    .line 43
    :pswitch_3
    new-instance v0, Lcom/tencent/mna/c/d/c;

    invoke-direct {v0}, Lcom/tencent/mna/c/d/c;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mna/c/d/c;->a()Lcom/tencent/mna/b/a/f;

    move-result-object v0

    goto :goto_0

    .line 46
    :pswitch_4
    new-instance v0, Lcom/tencent/mna/c/b/c;

    invoke-direct {v0}, Lcom/tencent/mna/c/b/c;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mna/c/b/c;->a()Lcom/tencent/mna/b/a/f;

    move-result-object v0

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static b(I)Lcom/tencent/mna/b/d/a;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    packed-switch p0, :pswitch_data_0

    .line 75
    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    new-instance v0, Lcom/tencent/mna/c/c/c;

    invoke-direct {v0}, Lcom/tencent/mna/c/c/c;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mna/c/c/c;->b()Lcom/tencent/mna/b/d/a;

    move-result-object v0

    goto :goto_0

    .line 61
    :pswitch_1
    new-instance v0, Lcom/tencent/mna/c/e/c;

    invoke-direct {v0}, Lcom/tencent/mna/c/e/c;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mna/c/e/c;->b()Lcom/tencent/mna/b/d/a;

    move-result-object v0

    goto :goto_0

    .line 64
    :pswitch_2
    new-instance v0, Lcom/tencent/mna/c/a/c;

    invoke-direct {v0}, Lcom/tencent/mna/c/a/c;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mna/c/a/c;->b()Lcom/tencent/mna/b/d/a;

    move-result-object v0

    goto :goto_0

    .line 67
    :pswitch_3
    new-instance v0, Lcom/tencent/mna/c/d/c;

    invoke-direct {v0}, Lcom/tencent/mna/c/d/c;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mna/c/d/c;->b()Lcom/tencent/mna/b/d/a;

    move-result-object v0

    goto :goto_0

    .line 70
    :pswitch_4
    new-instance v0, Lcom/tencent/mna/c/b/c;

    invoke-direct {v0}, Lcom/tencent/mna/c/b/c;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mna/c/b/c;->b()Lcom/tencent/mna/b/d/a;

    move-result-object v0

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
