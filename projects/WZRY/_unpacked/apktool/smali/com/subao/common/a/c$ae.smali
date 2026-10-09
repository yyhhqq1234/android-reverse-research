.class Lcom/subao/common/a/c$ae;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Lcom/subao/common/a/c$ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ae"
.end annotation


# instance fields
.field private final a:Lcom/subao/common/k/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/subao/common/g/c;)V
    .locals 1

    .prologue
    .line 1699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1700
    new-instance v0, Lcom/subao/common/a/c$e;

    invoke-direct {v0, p1, p2}, Lcom/subao/common/a/c$e;-><init>(Landroid/content/Context;Lcom/subao/common/g/c;)V

    invoke-static {p1, v0}, Lcom/subao/common/k/a;->a(Landroid/content/Context;Lcom/subao/common/k/a$a;)Lcom/subao/common/k/a;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/a/c$ae;->a:Lcom/subao/common/k/a;

    .line 1701
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 1716
    invoke-static {}, Lcom/subao/common/e/z;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1717
    new-instance v0, Lcom/subao/common/k/b$d;

    const/16 v1, 0x7d6

    invoke-direct {v0, v1}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v0

    .line 1719
    :cond_0
    iget-object v0, p0, Lcom/subao/common/a/c$ae;->a:Lcom/subao/common/k/a;

    invoke-virtual {v0, p1}, Lcom/subao/common/k/a;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/subao/common/a/c$ae;->a:Lcom/subao/common/k/a;

    invoke-virtual {v0}, Lcom/subao/common/k/a;->a()V

    .line 1706
    return-void
.end method
