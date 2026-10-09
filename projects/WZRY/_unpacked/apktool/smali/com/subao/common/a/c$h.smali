.class Lcom/subao/common/a/c$h;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Lcom/subao/common/e/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private final a:Lcom/subao/common/intf/QuerySignCouponsCallback;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/subao/common/intf/QuerySignCouponsCallback;)V
    .locals 0
    .param p1    # Lcom/subao/common/intf/QuerySignCouponsCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2885
    iput-object p1, p0, Lcom/subao/common/a/c$h;->a:Lcom/subao/common/intf/QuerySignCouponsCallback;

    .line 2886
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2889
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 2890
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2892
    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 5
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/n;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2896
    if-eqz p1, :cond_0

    .line 2897
    iget-object v0, p0, Lcom/subao/common/a/c$h;->a:Lcom/subao/common/intf/QuerySignCouponsCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/subao/common/intf/QuerySignCouponsCallback;->onQuerySignCouponsResult(ILjava/util/List;)V

    .line 2920
    :goto_0
    return-void

    .line 2900
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2901
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2902
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/e/n;

    .line 2903
    const-string/jumbo v3, "xiaomi"

    invoke-virtual {v0, v3}, Lcom/subao/common/e/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2904
    if-eqz v3, :cond_1

    .line 2905
    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 2907
    :pswitch_0
    const-string v0, "1"

    invoke-static {v1, v0}, Lcom/subao/common/a/c$h;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 2905
    :sswitch_0
    const-string v4, "dayfree"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v4, "twoDaysfree"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :sswitch_2
    const-string/jumbo v4, "threeDaysfree"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    .line 2910
    :pswitch_1
    const-string v0, "2"

    invoke-static {v1, v0}, Lcom/subao/common/a/c$h;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 2913
    :pswitch_2
    const-string v0, "3"

    invoke-static {v1, v0}, Lcom/subao/common/a/c$h;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 2919
    :cond_3
    iget-object v0, p0, Lcom/subao/common/a/c$h;->a:Lcom/subao/common/intf/QuerySignCouponsCallback;

    invoke-interface {v0, p1, v1}, Lcom/subao/common/intf/QuerySignCouponsCallback;->onQuerySignCouponsResult(ILjava/util/List;)V

    goto :goto_0

    .line 2905
    :sswitch_data_0
    .sparse-switch
        -0x3883e251 -> :sswitch_1
        -0x269970ff -> :sswitch_2
        0x564e6c08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
