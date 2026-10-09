.class Lcom/tencent/tp/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tp/c/f;


# instance fields
.field final synthetic a:Lcom/tencent/tp/b/c;


# direct methods
.method constructor <init>(Lcom/tencent/tp/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tp/b/d;->a:Lcom/tencent/tp/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tp/b/d;->a:Lcom/tencent/tp/b/c;

    invoke-static {v0, p1}, Lcom/tencent/tp/b/c;->a(Lcom/tencent/tp/b/c;I)I

    iget-object v0, p0, Lcom/tencent/tp/b/d;->a:Lcom/tencent/tp/b/c;

    invoke-static {v0, p2}, Lcom/tencent/tp/b/c;->b(Lcom/tencent/tp/b/c;I)I

    iget-object v0, p0, Lcom/tencent/tp/b/d;->a:Lcom/tencent/tp/b/c;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/tencent/tp/b/c;->a(Lcom/tencent/tp/b/c;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
