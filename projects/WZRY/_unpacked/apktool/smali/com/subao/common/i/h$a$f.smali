.class Lcom/subao/common/i/h$a$f;
.super Lcom/subao/common/i/h$a$e;
.source "MessageSenderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic e:Lcom/subao/common/i/h$a;

.field private f:Lcom/subao/common/i/n$a;


# direct methods
.method constructor <init>(Lcom/subao/common/i/h$a;Lcom/subao/common/i/n$a;)V
    .locals 0

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/subao/common/i/h$a$f;->e:Lcom/subao/common/i/h$a;

    invoke-direct {p0, p1}, Lcom/subao/common/i/h$a$e;-><init>(Lcom/subao/common/i/h$a;)V

    .line 1001
    iput-object p2, p0, Lcom/subao/common/i/h$a$f;->f:Lcom/subao/common/i/n$a;

    .line 1002
    return-void
.end method


# virtual methods
.method protected c()[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1006
    iget-object v1, p0, Lcom/subao/common/i/h$a$f;->f:Lcom/subao/common/i/n$a;

    if-eqz v1, :cond_0

    .line 1007
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1008
    iget-object v2, p0, Lcom/subao/common/i/h$a$f;->f:Lcom/subao/common/i/n$a;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    iget-object v2, p0, Lcom/subao/common/i/h$a$f;->e:Lcom/subao/common/i/h$a;

    iget-object v2, v2, Lcom/subao/common/i/h$a;->a:Lcom/subao/common/i/i;

    invoke-interface {v2}, Lcom/subao/common/i/i;->e()Lcom/subao/common/i/a;

    move-result-object v2

    .line 1010
    invoke-static {}, Lcom/subao/common/i/k;->a()Lcom/subao/common/i/k;

    move-result-object v3

    .line 1009
    invoke-virtual {v2, v3, v1}, Lcom/subao/common/i/a;->a(Lcom/subao/common/i/k;Ljava/util/List;)Lcom/subao/common/i/n;

    move-result-object v1

    .line 1012
    iput-object v0, p0, Lcom/subao/common/i/h$a$f;->f:Lcom/subao/common/i/n$a;

    .line 1013
    invoke-static {v1}, Lcom/subao/common/i/h;->a(Lcom/subao/common/c;)[B

    move-result-object v0

    .line 1015
    :cond_0
    return-object v0
.end method
