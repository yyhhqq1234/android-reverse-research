.class Lcom/subao/common/l/c$i;
.super Lcom/subao/common/l/c$l;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# direct methods
.method constructor <init>(Lcom/subao/common/l/c$e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 877
    invoke-direct {p0, p1, p2}, Lcom/subao/common/l/c$l;-><init>(Lcom/subao/common/l/c$e;Ljava/lang/String;)V

    .line 878
    return-void
.end method


# virtual methods
.method a()Lcom/subao/common/l/c$a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 883
    sget-object v0, Lcom/subao/common/l/c$a;->b:Lcom/subao/common/l/c$a;

    return-object v0
.end method

.method protected a(ILjava/lang/Exception;[B)Lcom/subao/common/l/c$c;
    .locals 7

    .prologue
    .line 905
    invoke-virtual {p0, p1, p2, p3}, Lcom/subao/common/l/c$i;->b(ILjava/lang/Exception;[B)Lcom/subao/common/l/a;

    move-result-object v2

    .line 906
    new-instance v0, Lcom/subao/common/l/c$c;

    iget-object v1, p0, Lcom/subao/common/l/c$i;->a:Lcom/subao/common/l/c$e;

    iget v1, v1, Lcom/subao/common/l/c$e;->a:I

    iget-object v3, p0, Lcom/subao/common/l/c$i;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/subao/common/l/a;->a()Lcom/subao/common/i/n$a;

    move-result-object v6

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/l/c$c;-><init>(IILjava/lang/String;Ljava/lang/String;ILcom/subao/common/i/n$a;)V

    return-object v0
.end method

.method a(Lcom/subao/common/j/a$c;)Lcom/subao/common/l/c$c;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 911
    iget v0, p1, Lcom/subao/common/j/a$c;->a:I

    invoke-virtual {p0}, Lcom/subao/common/l/c$i;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 912
    new-instance v0, Lcom/subao/common/l/c$c;

    iget-object v1, p0, Lcom/subao/common/l/c$i;->a:Lcom/subao/common/l/c$e;

    iget v1, v1, Lcom/subao/common/l/c$e;->a:I

    iget-object v3, p0, Lcom/subao/common/l/c$i;->b:Ljava/lang/String;

    move v5, v2

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/l/c$c;-><init>(IILjava/lang/String;Ljava/lang/String;ILcom/subao/common/i/n$a;)V

    .line 914
    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lcom/subao/common/j/a$c;->a:I

    add-int/lit16 v1, v0, 0x1388

    iget-object v0, p0, Lcom/subao/common/l/c$i;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v4

    :goto_1
    invoke-virtual {p0, v1, v4, v0}, Lcom/subao/common/l/c$i;->a(ILjava/lang/Exception;[B)Lcom/subao/common/l/c$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/subao/common/l/c$i;->b:Ljava/lang/String;

    .line 915
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 888
    const/16 v0, 0xcc

    return v0
.end method

.method protected b(Lcom/subao/common/j/a$c;)Lcom/subao/common/l/c$h$b;
    .locals 4

    .prologue
    .line 921
    new-instance v0, Lcom/subao/common/l/c$h$b;

    iget v1, p1, Lcom/subao/common/j/a$c;->a:I

    iget-object v2, p0, Lcom/subao/common/l/c$i;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/subao/common/l/c$h$b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method e()Lcom/subao/common/j/a$b;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 894
    sget-object v0, Lcom/subao/common/j/a$b;->d:Lcom/subao/common/j/a$b;

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 900
    const/4 v0, 0x0

    return-object v0
.end method
