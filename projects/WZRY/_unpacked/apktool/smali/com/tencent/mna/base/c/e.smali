.class abstract Lcom/tencent/mna/base/c/e;
.super Ljava/lang/Object;
.source "ReporterAbstract.java"

# interfaces
.implements Lcom/tencent/mna/base/c/d;


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mna/base/c/e;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/tencent/mna/base/c/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mna/base/c/e;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object p0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/tencent/mna/base/c/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/mna/base/c/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object p0

    goto :goto_0
.end method

.method abstract a()V
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporter usereport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 40
    iput-boolean p1, p0, Lcom/tencent/mna/base/c/e;->a:Z

    .line 41
    return-void
.end method

.method abstract b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;
.end method

.method abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/tencent/mna/base/c/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mna/base/c/e;->a()V

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/tencent/mna/base/c/e;->a:Z

    return v0
.end method
