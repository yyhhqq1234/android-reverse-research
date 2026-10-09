.class public Lcom/subao/common/e/af;
.super Lcom/subao/common/e/ae;
.source "PortalMiscConfigDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/e/af$a;,
        Lcom/subao/common/e/af$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/subao/common/e/af$a;

.field private final b:Lcom/subao/common/e/af$b;


# direct methods
.method constructor <init>(Lcom/subao/common/e/ab$a;Lcom/subao/common/e/af$a;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/subao/common/e/ae;-><init>(Lcom/subao/common/e/ab$a;)V

    .line 23
    new-instance v0, Lcom/subao/common/e/af$b;

    invoke-direct {v0}, Lcom/subao/common/e/af$b;-><init>()V

    iput-object v0, p0, Lcom/subao/common/e/af;->b:Lcom/subao/common/e/af$b;

    .line 27
    iput-object p2, p0, Lcom/subao/common/e/af;->a:Lcom/subao/common/e/af$a;

    .line 28
    return-void
.end method

.method public static a(Lcom/subao/common/e/ab$a;Lcom/subao/common/e/af$a;)V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/subao/common/e/af;

    invoke-direct {v0, p0, p1}, Lcom/subao/common/e/af;-><init>(Lcom/subao/common/e/ab$a;Lcom/subao/common/e/af$a;)V

    .line 32
    invoke-static {v0}, Lcom/subao/common/e/ae;->a(Lcom/subao/common/e/ae;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "configs/misc"

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    iget-object v0, p0, Lcom/subao/common/e/af;->b:Lcom/subao/common/e/af$b;

    invoke-virtual {v0, p1, p2}, Lcom/subao/common/e/af$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected a(Z)V
    .locals 4

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/subao/common/e/ae;->a(Z)V

    .line 62
    iget-object v0, p0, Lcom/subao/common/e/af;->b:Lcom/subao/common/e/af$b;

    invoke-static {v0}, Lcom/subao/common/e/af$b;->a(Lcom/subao/common/e/af$b;)I

    move-result v0

    invoke-static {v0}, Lcom/subao/common/e/af$b;->a(I)Z

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/subao/common/e/af;->b:Lcom/subao/common/e/af$b;

    invoke-static {v1}, Lcom/subao/common/e/af$b;->b(Lcom/subao/common/e/af$b;)I

    move-result v1

    invoke-static {v1}, Lcom/subao/common/e/af$b;->a(I)Z

    move-result v1

    .line 64
    iget-object v2, p0, Lcom/subao/common/e/af;->b:Lcom/subao/common/e/af$b;

    invoke-static {v2}, Lcom/subao/common/e/af$b;->c(Lcom/subao/common/e/af$b;)I

    move-result v2

    invoke-static {v2}, Lcom/subao/common/e/af$b;->a(I)Z

    move-result v2

    .line 65
    iget-object v3, p0, Lcom/subao/common/e/af;->b:Lcom/subao/common/e/af$b;

    invoke-static {v3}, Lcom/subao/common/e/af$b;->d(Lcom/subao/common/e/af$b;)I

    move-result v3

    invoke-static {v3}, Lcom/subao/common/e/af$b;->a(I)Z

    move-result v3

    .line 66
    invoke-static {v0, v1, v2, v3}, Lcom/subao/common/i/d$a;->a(ZZZZ)V

    .line 67
    iget-object v0, p0, Lcom/subao/common/e/af;->b:Lcom/subao/common/e/af$b;

    invoke-static {v0}, Lcom/subao/common/e/af$b;->e(Lcom/subao/common/e/af$b;)Z

    move-result v0

    invoke-static {v0}, Lcom/subao/common/b/b;->a(Z)V

    .line 68
    iget-object v0, p0, Lcom/subao/common/e/af;->b:Lcom/subao/common/e/af$b;

    invoke-static {v0}, Lcom/subao/common/e/af$b;->f(Lcom/subao/common/e/af$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/common/e/ap;->a(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/subao/common/l/c;->a()Lcom/subao/common/l/c;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/e/af;->b:Lcom/subao/common/e/af$b;

    invoke-virtual {v1}, Lcom/subao/common/e/af$b;->a()[Lcom/subao/common/e/f$a;

    move-result-object v1

    iget-object v2, p0, Lcom/subao/common/e/af;->b:Lcom/subao/common/e/af$b;

    invoke-virtual {v2}, Lcom/subao/common/e/af$b;->b()[Lcom/subao/common/e/f$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/subao/common/l/c;->a([Lcom/subao/common/e/f$a;[Lcom/subao/common/e/f$a;)V

    .line 71
    iget-object v0, p0, Lcom/subao/common/e/af;->a:Lcom/subao/common/e/af$a;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/subao/common/e/af;->a:Lcom/subao/common/e/af$a;

    iget-object v1, p0, Lcom/subao/common/e/af;->b:Lcom/subao/common/e/af$b;

    invoke-interface {v0, v1}, Lcom/subao/common/e/af$a;->a(Lcom/subao/common/e/af$b;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "misc-config"

    return-object v0
.end method

.method b(Lcom/subao/common/e/ac;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/subao/common/e/af;->a:Lcom/subao/common/e/af$a;

    if-eqz v0, :cond_0

    .line 38
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/subao/common/e/ac;->c:[B

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/subao/common/e/ac;->c:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/subao/common/e/af;->a:Lcom/subao/common/e/af$a;

    invoke-interface {v1, v0}, Lcom/subao/common/e/af$a;->a(Ljava/lang/String;)V

    .line 41
    :cond_0
    invoke-super {p0, p1}, Lcom/subao/common/e/ae;->b(Lcom/subao/common/e/ac;)V

    .line 42
    return-void

    .line 38
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
