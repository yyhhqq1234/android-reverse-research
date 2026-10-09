.class final Lcom/tencent/a/b/d/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/a/b/d/e;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/a/b/d/e;


# direct methods
.method constructor <init>(Lcom/tencent/a/b/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/b/d/e$2;->a:Lcom/tencent/a/b/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/a/b/d/e$2;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v0, v1, v1}, Lcom/tencent/a/b/d/e;->a(ZZ)V

    return-void
.end method
