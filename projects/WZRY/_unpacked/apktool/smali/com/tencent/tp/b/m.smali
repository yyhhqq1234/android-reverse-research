.class Lcom/tencent/tp/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tp/a/o$a;


# instance fields
.field final synthetic a:Lcom/tencent/tp/b/k;


# direct methods
.method constructor <init>(Lcom/tencent/tp/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tp/b/m;->a:Lcom/tencent/tp/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "rootkit:launch_1_0"

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tp/b/m;->a:Lcom/tencent/tp/b/k;

    invoke-static {v0}, Lcom/tencent/tp/b/k;->a(Lcom/tencent/tp/b/k;)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "rootkit:launch_1_1"

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tp/b/m;->a:Lcom/tencent/tp/b/k;

    invoke-static {v0, v1}, Lcom/tencent/tp/b/k;->a(Lcom/tencent/tp/b/k;Z)Z

    invoke-static {v1}, Lcom/tencent/tp/m;->a(I)V

    return-void
.end method
