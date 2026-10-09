.class Lcom/tencent/tp/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/tp/a/b;


# direct methods
.method constructor <init>(Lcom/tencent/tp/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tp/a/c;->a:Lcom/tencent/tp/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/a/c;->a:Lcom/tencent/tp/a/b;

    iget-object v0, v0, Lcom/tencent/tp/a/b;->a:Lcom/tencent/tp/a/a;

    invoke-virtual {v0}, Lcom/tencent/tp/a/a;->f()V

    return-void
.end method
