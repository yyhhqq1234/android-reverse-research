.class public Lcom/tencent/mna/b/a/b/e;
.super Ljava/lang/Object;
.source "SpeedComparatorContext.java"


# instance fields
.field private a:Lcom/tencent/mna/b/a/b/b;


# direct methods
.method public constructor <init>(Lcom/tencent/mna/b/a/b/b;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/tencent/mna/b/a/b/e;->a:Lcom/tencent/mna/b/a/b/b;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/mna/b/a/c/c;Lcom/tencent/mna/b/a/c/c;)I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/mna/b/a/b/e;->a:Lcom/tencent/mna/b/a/b/b;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/tencent/mna/b/a/b/e;->a:Lcom/tencent/mna/b/a/b/b;

    invoke-interface {v0, p1, p2}, Lcom/tencent/mna/b/a/b/b;->a(Lcom/tencent/mna/b/a/c/c;Lcom/tencent/mna/b/a/c/c;)I

    move-result v0

    .line 27
    :goto_0
    return v0

    .line 26
    :cond_0
    const-string v0, "SpeedComparatorContext exception: comparator is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    goto :goto_0
.end method
