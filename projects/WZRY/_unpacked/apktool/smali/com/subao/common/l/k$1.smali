.class Lcom/subao/common/l/k$1;
.super Ljava/lang/Object;
.source "QosUser4GRegionAndISP.java"

# interfaces
.implements Lcom/subao/common/j/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/l/k;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/l/k;


# direct methods
.method constructor <init>(Lcom/subao/common/l/k;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/subao/common/l/k$1;->a:Lcom/subao/common/l/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/subao/common/j/d$c;)V
    .locals 4

    .prologue
    .line 125
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v0

    new-instance v1, Lcom/subao/common/l/k$a;

    iget-object v2, p0, Lcom/subao/common/l/k$1;->a:Lcom/subao/common/l/k;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v3}, Lcom/subao/common/l/k$a;-><init>(Lcom/subao/common/l/k;Lcom/subao/common/j/d$c;Lcom/subao/common/l/k$1;)V

    invoke-interface {v0, v1}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method
