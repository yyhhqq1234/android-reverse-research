.class final Lcom/tencent/a/b/d/e$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/a/b/d/e;-><init>(Lcom/tencent/b/a/a/f;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/tencent/a/b/d/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/tencent/a/b/h/a/a;->a()Lcom/tencent/a/b/h/a/a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/a/b/d/e;->B()I

    move-result v1

    invoke-static {}, Lcom/tencent/a/b/d/e;->C()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/a/b/h/a/a;->a(IIZ)V

    invoke-static {}, Lcom/tencent/a/b/h/a/a;->a()Lcom/tencent/a/b/h/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/h/a/a;->c()V

    return-void
.end method
