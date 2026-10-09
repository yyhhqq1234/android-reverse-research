.class public Lcom/subao/common/j/c;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/j/c$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/List;Lcom/subao/common/j/n;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/j/m;",
            ">;",
            "Lcom/subao/common/j/n;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lcom/subao/common/j/a$b;->a:Lcom/subao/common/j/a$b;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/subao/common/j/c$a;->a(Ljava/util/List;Lcom/subao/common/j/n;Ljava/lang/String;Lcom/subao/common/j/a$b;[B)V

    .line 31
    return-void
.end method

.method public static a(Ljava/util/List;Lcom/subao/common/j/n;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/j/m;",
            ">;",
            "Lcom/subao/common/j/n;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/subao/common/j/a$b;->b:Lcom/subao/common/j/a$b;

    invoke-static {p0, p1, p2, v0, p3}, Lcom/subao/common/j/c$a;->a(Ljava/util/List;Lcom/subao/common/j/n;Ljava/lang/String;Lcom/subao/common/j/a$b;[B)V

    .line 43
    return-void
.end method
