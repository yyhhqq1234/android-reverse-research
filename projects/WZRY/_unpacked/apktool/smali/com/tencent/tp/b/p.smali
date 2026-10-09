.class Lcom/tencent/tp/b/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tp/a/o$a;


# instance fields
.field final synthetic a:Lcom/tencent/tp/b/n;


# direct methods
.method constructor <init>(Lcom/tencent/tp/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tp/b/p;->a:Lcom/tencent/tp/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "rootkit:up_1_0"

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tp/b/p;->a:Lcom/tencent/tp/b/n;

    invoke-static {v0}, Lcom/tencent/tp/b/n;->a(Lcom/tencent/tp/b/n;)V

    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, "rootkit:up_1_1"

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tp/m;->a()V

    return-void
.end method
