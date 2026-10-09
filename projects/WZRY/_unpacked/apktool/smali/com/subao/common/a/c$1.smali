.class Lcom/subao/common/a/c$1;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Lcom/subao/common/e/am$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/a/c;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/a/c;


# direct methods
.method constructor <init>(Lcom/subao/common/a/c;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/subao/common/a/c$1;->a:Lcom/subao/common/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 537
    invoke-static {p1}, Lcom/subao/common/i/k;->a(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/subao/common/a/c$1;->a:Lcom/subao/common/a/c;

    invoke-static {v0}, Lcom/subao/common/a/c;->a(Lcom/subao/common/a/c;)Lcom/subao/common/g/c;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "key_subao_id"

    invoke-virtual {v0, v1, v2, p1}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 539
    return-void
.end method
