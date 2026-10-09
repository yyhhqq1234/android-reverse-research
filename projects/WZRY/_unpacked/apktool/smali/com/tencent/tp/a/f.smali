.class Lcom/tencent/tp/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tp/a/a$a;


# instance fields
.field final synthetic a:Lcom/tencent/tp/a/e;


# direct methods
.method constructor <init>(Lcom/tencent/tp/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tp/a/f;->a:Lcom/tencent/tp/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tp/a/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg_box_dismiss:left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/tp/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tp/a/f;->a:Lcom/tencent/tp/a/e;

    invoke-static {v0, p1}, Lcom/tencent/tp/a/e;->a(Lcom/tencent/tp/a/e;Lcom/tencent/tp/a/a;)V

    return-void
.end method

.method public b(Lcom/tencent/tp/a/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg_box_dismiss:right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/tp/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tp/a/f;->a:Lcom/tencent/tp/a/e;

    invoke-static {v0, p1}, Lcom/tencent/tp/a/e;->a(Lcom/tencent/tp/a/e;Lcom/tencent/tp/a/a;)V

    return-void
.end method

.method public c(Lcom/tencent/tp/a/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg_box_dismiss:timeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/tp/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tp/a/f;->a:Lcom/tencent/tp/a/e;

    invoke-static {v0, p1}, Lcom/tencent/tp/a/e;->a(Lcom/tencent/tp/a/e;Lcom/tencent/tp/a/a;)V

    return-void
.end method
