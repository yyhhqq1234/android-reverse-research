.class public Lcom/subao/common/c/a;
.super Ljava/lang/Object;
.source "BuyRequester.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final b:I

.field public c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lcom/subao/common/e/al;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final f:Lcom/subao/common/intf/RequestBuyCallback;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;Ljava/lang/String;ILcom/subao/common/intf/RequestBuyCallback;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/subao/common/e/al;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/subao/common/intf/RequestBuyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/subao/common/c/a;->d:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/subao/common/c/a;->e:Lcom/subao/common/e/al;

    .line 53
    iput-object p3, p0, Lcom/subao/common/c/a;->a:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/subao/common/c/a;->c:Ljava/lang/String;

    .line 55
    iput p5, p0, Lcom/subao/common/c/a;->b:I

    .line 56
    iput-object p6, p0, Lcom/subao/common/c/a;->f:Lcom/subao/common/intf/RequestBuyCallback;

    .line 57
    return-void
.end method

.method private static a(I)I
    .locals 1

    .prologue
    .line 63
    if-gez p0, :cond_0

    const/16 v0, 0x3ee

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3f0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/subao/common/c/b;

    iget-object v1, p0, Lcom/subao/common/c/a;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/subao/common/c/b;-><init>(Ljava/lang/String;I)V

    .line 71
    new-instance v1, Lcom/subao/common/c/c;

    iget-object v2, p0, Lcom/subao/common/c/a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/c/a;->e:Lcom/subao/common/e/al;

    iget-object v4, p0, Lcom/subao/common/c/a;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/subao/common/c/c;-><init>(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/c/b;)V

    .line 73
    invoke-virtual {v1}, Lcom/subao/common/c/c;->run()V

    .line 74
    invoke-virtual {v1}, Lcom/subao/common/c/c;->e()Ljava/lang/String;

    move-result-object v4

    .line 75
    if-nez v4, :cond_0

    .line 76
    invoke-virtual {v1}, Lcom/subao/common/c/c;->d()I

    move-result v0

    invoke-static {v0}, Lcom/subao/common/c/a;->a(I)I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/subao/common/c/a;->f:Lcom/subao/common/intf/RequestBuyCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/subao/common/intf/RequestBuyCallback;->onRequestBuyResult(ILcom/subao/common/intf/RequestBuyResult;)V

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Lcom/subao/common/c/d;

    iget-object v1, p0, Lcom/subao/common/c/a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/subao/common/c/a;->e:Lcom/subao/common/e/al;

    iget-object v3, p0, Lcom/subao/common/c/a;->a:Ljava/lang/String;

    iget v5, p0, Lcom/subao/common/c/a;->b:I

    invoke-direct/range {v0 .. v5}, Lcom/subao/common/c/d;-><init>(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    invoke-virtual {v0}, Lcom/subao/common/c/d;->run()V

    .line 86
    iget-object v1, p0, Lcom/subao/common/c/a;->f:Lcom/subao/common/intf/RequestBuyCallback;

    invoke-virtual {v0}, Lcom/subao/common/c/d;->d()I

    move-result v2

    invoke-virtual {v0}, Lcom/subao/common/c/d;->e()Lcom/subao/common/intf/RequestBuyResult;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/subao/common/intf/RequestBuyCallback;->onRequestBuyResult(ILcom/subao/common/intf/RequestBuyResult;)V

    goto :goto_0
.end method
