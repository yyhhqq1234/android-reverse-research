.class public Lcom/subao/common/e/u$a;
.super Lcom/subao/common/e/v;
.source "HRDataTrans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/e/al;Lcom/subao/common/j/j;)V
    .locals 1
    .param p3    # Lcom/subao/common/e/al;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 140
    invoke-static {p3}, Lcom/subao/common/e/u$a;->a(Lcom/subao/common/e/al;)Lcom/subao/common/e/al;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/subao/common/e/v;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/e/al;Lcom/subao/common/j/j;)V

    .line 141
    return-void
.end method

.method private static a(Lcom/subao/common/e/al;)Lcom/subao/common/e/al;
    .locals 3
    .param p0    # Lcom/subao/common/e/al;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    new-instance p0, Lcom/subao/common/e/al;

    const-string v0, "https"

    sget-object v1, Lcom/subao/common/e/f$a;->e:Lcom/subao/common/e/f$a;

    iget-object v1, v1, Lcom/subao/common/e/f$a;->a:Ljava/lang/String;

    sget-object v2, Lcom/subao/common/e/f$a;->e:Lcom/subao/common/e/f$a;

    iget v2, v2, Lcom/subao/common/e/f$a;->b:I

    invoke-direct {p0, v0, v1, v2}, Lcom/subao/common/e/al;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    :cond_0
    return-object p0
.end method
