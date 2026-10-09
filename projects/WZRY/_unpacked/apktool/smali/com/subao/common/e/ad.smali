.class public Lcom/subao/common/e/ad;
.super Lcom/subao/common/e/ae;
.source "PortalGeneralConfigDownloader.java"


# instance fields
.field private final a:Lcom/subao/common/g/c;


# direct methods
.method protected constructor <init>(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/subao/common/e/ae;-><init>(Lcom/subao/common/e/ab$a;)V

    .line 25
    iput-object p2, p0, Lcom/subao/common/e/ad;->a:Lcom/subao/common/g/c;

    .line 26
    return-void
.end method

.method public static a(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/subao/common/e/ad;

    invoke-direct {v0, p0, p1}, Lcom/subao/common/e/ad;-><init>(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)V

    .line 39
    invoke-static {v0}, Lcom/subao/common/e/ae;->a(Lcom/subao/common/e/ae;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "configs/general"

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/subao/common/e/ad;->a:Lcom/subao/common/g/c;

    invoke-virtual {v0, p1, p2}, Lcom/subao/common/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "general"

    return-object v0
.end method
