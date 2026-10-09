.class Lcom/subao/common/j/d$f;
.super Ljava/lang/Object;
.source "IPInfoQuery.java"

# interfaces
.implements Lcom/subao/common/j/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/j/d$f$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/subao/common/j/d$c;
    .locals 7

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 354
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 356
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 358
    :cond_0
    const-string v4, "isp-map.wsds.cn"

    invoke-static {v4}, Lcom/subao/common/j/d$f$a;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 359
    if-nez v4, :cond_1

    .line 360
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0}, Ljava/net/UnknownHostException;-><init>()V

    throw v0

    .line 362
    :cond_1
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 363
    if-eqz v4, :cond_2

    array-length v5, v4

    if-ge v5, v0, :cond_3

    :cond_2
    move-object v0, v3

    .line 389
    :goto_0
    return-object v0

    .line 366
    :cond_3
    aget-byte v5, v4, v2

    const/16 v6, -0x54

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    aget-byte v5, v4, v5

    const/16 v6, 0x10

    if-eq v5, v6, :cond_5

    :cond_4
    move-object v0, v3

    .line 370
    goto :goto_0

    .line 375
    :cond_5
    const/4 v5, 0x3

    aget-byte v5, v4, v5

    packed-switch v5, :pswitch_data_0

    move v0, v2

    .line 389
    :goto_1
    :pswitch_0
    new-instance v2, Lcom/subao/common/j/d$c;

    aget-byte v1, v4, v1

    invoke-direct {v2, v3, v1, v0, v3}, Lcom/subao/common/j/d$c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 377
    :pswitch_1
    const/16 v0, 0x8

    .line 378
    goto :goto_1

    :pswitch_2
    move v0, v1

    .line 384
    goto :goto_1

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method
