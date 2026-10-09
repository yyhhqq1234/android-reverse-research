.class Lcom/subao/common/a/c$w;
.super Ljava/lang/Object;
.source "EngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/a/c$w$a;
    }
.end annotation


# static fields
.field private static a:Lcom/subao/common/a/c$w$a;


# direct methods
.method static a()V
    .locals 4

    .prologue
    .line 1874
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v0

    sget-object v1, Lcom/subao/common/a/c$w;->a:Lcom/subao/common/a/c$w$a;

    const-wide/32 v2, 0x927c0

    invoke-interface {v0, v1, v2, v3}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;J)Z

    .line 1875
    return-void
.end method

.method static a(Lcom/subao/common/a/a;Lcom/subao/common/i/g;I)V
    .locals 1

    .prologue
    .line 1878
    sget-object v0, Lcom/subao/common/a/c$w;->a:Lcom/subao/common/a/c$w$a;

    if-nez v0, :cond_0

    .line 1879
    new-instance v0, Lcom/subao/common/a/c$w$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/subao/common/a/c$w$a;-><init>(Lcom/subao/common/a/a;Lcom/subao/common/i/g;I)V

    sput-object v0, Lcom/subao/common/a/c$w;->a:Lcom/subao/common/a/c$w$a;

    .line 1880
    invoke-static {}, Lcom/subao/common/a/c$w;->a()V

    .line 1882
    :cond_0
    return-void
.end method

.method static a(Lcom/subao/common/i/g;I)V
    .locals 2

    .prologue
    .line 1899
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/subao/common/i/g;->a(IILjava/util/List;)V

    .line 1904
    return-void
.end method

.method static b()V
    .locals 2

    .prologue
    .line 1885
    sget-object v0, Lcom/subao/common/a/c$w;->a:Lcom/subao/common/a/c$w$a;

    if-eqz v0, :cond_0

    .line 1886
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v0

    sget-object v1, Lcom/subao/common/a/c$w;->a:Lcom/subao/common/a/c$w$a;

    invoke-interface {v0, v1}, Lcom/subao/common/m/a;->b(Ljava/lang/Runnable;)V

    .line 1887
    const/4 v0, 0x0

    sput-object v0, Lcom/subao/common/a/c$w;->a:Lcom/subao/common/a/c$w$a;

    .line 1889
    :cond_0
    return-void
.end method

.method static c()Z
    .locals 2

    .prologue
    .line 1895
    invoke-static {}, Lcom/subao/common/n/c;->a()I

    move-result v0

    invoke-static {}, Lcom/subao/common/e/l;->a()Lcom/subao/common/e/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subao/common/e/l;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
