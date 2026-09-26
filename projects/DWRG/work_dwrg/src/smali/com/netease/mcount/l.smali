.class final Lcom/netease/mcount/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mcount/l;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/netease/mcount/l;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mcount/l;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/netease/mcount/l;->b:Z

    invoke-static {v0, v1}, Lcom/netease/mcount/k;->a(Landroid/content/Context;Z)V

    return-void
.end method
