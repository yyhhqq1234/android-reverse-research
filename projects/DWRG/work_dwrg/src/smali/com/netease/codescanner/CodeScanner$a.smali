.class Lcom/netease/codescanner/CodeScanner$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/codescanner/CodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/codescanner/CodeScanner;


# direct methods
.method private constructor <init>(Lcom/netease/codescanner/CodeScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/codescanner/CodeScanner$a;->a:Lcom/netease/codescanner/CodeScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/codescanner/CodeScanner;Lcom/netease/codescanner/CodeScanner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/codescanner/CodeScanner$a;-><init>(Lcom/netease/codescanner/CodeScanner;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner$a;->a:Lcom/netease/codescanner/CodeScanner;

    invoke-static {v0}, Lcom/netease/codescanner/CodeScanner;->access$100(Lcom/netease/codescanner/CodeScanner;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner$a;->a:Lcom/netease/codescanner/CodeScanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/codescanner/CodeScanner;->access$102(Lcom/netease/codescanner/CodeScanner;Z)Z

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner$a;->a:Lcom/netease/codescanner/CodeScanner;

    invoke-static {v0, p1}, Lcom/netease/codescanner/CodeScanner;->access$200(Lcom/netease/codescanner/CodeScanner;Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner$a;->a:Lcom/netease/codescanner/CodeScanner;

    invoke-virtual {v0}, Lcom/netease/codescanner/CodeScanner;->onInitialized()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner$a;->a:Lcom/netease/codescanner/CodeScanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/codescanner/CodeScanner;->access$102(Lcom/netease/codescanner/CodeScanner;Z)Z

    return-void
.end method
