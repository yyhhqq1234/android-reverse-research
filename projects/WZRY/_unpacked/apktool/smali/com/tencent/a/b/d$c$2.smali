.class final Lcom/tencent/a/b/d$c$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/a/b/d$c;->a([Ljava/lang/String;)Lcom/tencent/a/b/d$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:I


# direct methods
.method constructor <init>(Lcom/tencent/a/b/d$c;I)V
    .locals 0

    iput p2, p0, Lcom/tencent/a/b/d$c$2;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/tencent/a/b/h/a/a;->a()Lcom/tencent/a/b/h/a/a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/a/b/d/e;->u()I

    move-result v1

    iget v2, p0, Lcom/tencent/a/b/d$c$2;->a:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/a/b/h/a/a;->a(IIZ)V

    return-void
.end method
