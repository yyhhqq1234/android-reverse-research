.class public Lcom/subao/common/e/ag;
.super Lcom/subao/common/e/ae;
.source "PortalRedirectConfigDownloader.java"


# instance fields
.field private final a:Lcom/subao/common/g/c;


# direct methods
.method protected constructor <init>(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/subao/common/e/ab$b;

    invoke-direct {v0, p1}, Lcom/subao/common/e/ab$b;-><init>(Lcom/subao/common/e/ab$a;)V

    invoke-direct {p0, v0}, Lcom/subao/common/e/ae;-><init>(Lcom/subao/common/e/ab$a;)V

    .line 17
    iput-object p2, p0, Lcom/subao/common/e/ag;->a:Lcom/subao/common/g/c;

    .line 18
    return-void
.end method

.method public static a(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/subao/common/e/ag;

    invoke-direct {v0, p0, p1}, Lcom/subao/common/e/ag;-><init>(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)V

    .line 22
    invoke-static {v0}, Lcom/subao/common/e/ae;->a(Lcom/subao/common/e/ae;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "configs/redirect_game_ip"

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "redirect"

    return-object v0
.end method

.method b(Lcom/subao/common/e/ac;)V
    .locals 4

    .prologue
    .line 28
    iget-object v0, p1, Lcom/subao/common/e/ac;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/subao/common/e/ac;->c:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/subao/common/e/ag;->a:Lcom/subao/common/g/c;

    const/4 v1, 0x0

    const-string v2, "key_redirect_game_ip"

    iget-object v3, p1, Lcom/subao/common/e/ac;->c:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/subao/common/g/c;->a(ILjava/lang/String;[B)V

    .line 31
    :cond_0
    return-void
.end method
