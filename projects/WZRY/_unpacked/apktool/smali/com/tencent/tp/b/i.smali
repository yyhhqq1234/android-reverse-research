.class Lcom/tencent/tp/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tp/a/o$a;


# instance fields
.field final synthetic a:Lcom/tencent/tp/b/g;


# direct methods
.method constructor <init>(Lcom/tencent/tp/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tp/b/i;->a:Lcom/tencent/tp/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "rootkit:dl_1_0"

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tp/b/i;->a:Lcom/tencent/tp/b/g;

    invoke-static {v0}, Lcom/tencent/tp/b/g;->b(Lcom/tencent/tp/b/g;)V

    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, "rootkit:dl_1_1"

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/tp/m;->a(I)V

    return-void
.end method
