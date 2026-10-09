.class Lcom/subao/common/a/c$r;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Lcom/subao/common/c/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "r"
.end annotation


# instance fields
.field private final a:Lcom/subao/common/intf/QueryProductCallback;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/subao/common/e/al;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/subao/common/e/i;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/subao/common/e/i",
            "<",
            "Lcom/subao/common/e/al;",
            "Lcom/subao/common/intf/ProductList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/subao/common/intf/QueryProductCallback;Lcom/subao/common/e/al;Lcom/subao/common/e/i;)V
    .locals 0
    .param p1    # Lcom/subao/common/intf/QueryProductCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/subao/common/e/al;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/subao/common/e/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subao/common/intf/QueryProductCallback;",
            "Lcom/subao/common/e/al;",
            "Lcom/subao/common/e/i",
            "<",
            "Lcom/subao/common/e/al;",
            "Lcom/subao/common/intf/ProductList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2777
    iput-object p1, p0, Lcom/subao/common/a/c$r;->a:Lcom/subao/common/intf/QueryProductCallback;

    .line 2778
    iput-object p2, p0, Lcom/subao/common/a/c$r;->b:Lcom/subao/common/e/al;

    .line 2779
    iput-object p3, p0, Lcom/subao/common/a/c$r;->c:Lcom/subao/common/e/i;

    .line 2780
    return-void
.end method


# virtual methods
.method public a(ILcom/subao/common/intf/ProductList;)V
    .locals 7
    .param p2    # Lcom/subao/common/intf/ProductList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 2784
    const-string v0, "SubaoData"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2785
    const-string v2, "SubaoData"

    sget-object v3, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v4, "QueryProductList result, responseCode is %d, product count is %d"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    .line 2786
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v6, 0x1

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    .line 2785
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2797
    const/16 v1, 0x3f0

    .line 2800
    :goto_1
    :sswitch_0
    iget-object v2, p0, Lcom/subao/common/a/c$r;->c:Lcom/subao/common/e/i;

    iget-object v3, p0, Lcom/subao/common/a/c$r;->b:Lcom/subao/common/e/al;

    if-nez v1, :cond_2

    move-object v0, p2

    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/subao/common/e/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2801
    iget-object v0, p0, Lcom/subao/common/a/c$r;->a:Lcom/subao/common/intf/QueryProductCallback;

    invoke-interface {v0, v1, p2}, Lcom/subao/common/intf/QueryProductCallback;->onQueryProductResult(ILcom/subao/common/intf/ProductList;)V

    .line 2802
    return-void

    .line 2786
    :cond_1
    invoke-virtual {p2}, Lcom/subao/common/intf/ProductList;->getCount()I

    move-result v0

    goto :goto_0

    .line 2794
    :sswitch_1
    const/16 v1, 0x3ee

    .line 2795
    goto :goto_1

    .line 2800
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 2789
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method
