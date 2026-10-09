.class final Lcom/subao/common/b/b$5;
.super Lcom/subao/common/j/n;
.source "AuthExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/b/b;->a(Lcom/subao/common/b/b$c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/subao/common/i/d$b;II)V
    .locals 0

    .prologue
    .line 553
    invoke-direct {p0, p1, p2, p3}, Lcom/subao/common/j/n;-><init>(Lcom/subao/common/i/d$b;II)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    const-string v0, "auth_set_config"

    return-object v0
.end method

.method protected a(I[B)V
    .locals 3

    .prologue
    .line 581
    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    .line 582
    const-string v0, "SubaoAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try upload user config, response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {p0, p1, p2}, Lcom/subao/common/b/b$5;->d(I[B)V

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/subao/common/b/b$5;->d()V

    .line 586
    return-void
.end method

.method protected b(I[B)V
    .locals 0

    .prologue
    .line 591
    return-void
.end method
