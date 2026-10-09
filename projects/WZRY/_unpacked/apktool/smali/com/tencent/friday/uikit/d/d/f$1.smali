.class Lcom/tencent/friday/uikit/d/d/f$1;
.super Ljava/lang/Object;
.source "JMapView.java"

# interfaces
.implements Lcom/tencent/b/a/a/i$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/friday/uikit/d/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/friday/uikit/d/d/f;


# direct methods
.method constructor <init>(Lcom/tencent/friday/uikit/d/d/f;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/f$1;->a:Lcom/tencent/friday/uikit/d/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f$1;->a:Lcom/tencent/friday/uikit/d/d/f;

    invoke-static {v0}, Lcom/tencent/friday/uikit/d/d/f;->a(Lcom/tencent/friday/uikit/d/d/f;)Lcom/tencent/b/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/b/a/a/i;->b()D

    move-result-wide v0

    .line 119
    iget-object v2, p0, Lcom/tencent/friday/uikit/d/d/f$1;->a:Lcom/tencent/friday/uikit/d/d/f;

    invoke-static {v2}, Lcom/tencent/friday/uikit/d/d/f;->b(Lcom/tencent/friday/uikit/d/d/f;)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/tencent/a/a/a/c;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/f$1;->a:Lcom/tencent/friday/uikit/d/d/f;

    invoke-static {v1}, Lcom/tencent/friday/uikit/d/d/f;->a(Lcom/tencent/friday/uikit/d/d/f;)Lcom/tencent/b/a/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/b/a/a/i;->a()Lcom/tencent/a/a/a/e;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/friday/uikit/d/d/f$1;->a:Lcom/tencent/friday/uikit/d/d/f;

    invoke-static {v2}, Lcom/tencent/friday/uikit/d/d/f;->a(Lcom/tencent/friday/uikit/d/d/f;)Lcom/tencent/b/a/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/b/a/a/i;->b()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/a/a/a/c;-><init>(Lcom/tencent/a/a/a/e;F)V

    .line 121
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/f$1;->a:Lcom/tencent/friday/uikit/d/d/f;

    invoke-virtual {v1, v0}, Lcom/tencent/friday/uikit/d/d/f;->a(Lcom/tencent/a/a/a/c;)V

    .line 124
    :cond_0
    return-void
.end method
