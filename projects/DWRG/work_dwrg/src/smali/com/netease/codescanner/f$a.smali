.class Lcom/netease/codescanner/f$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/codescanner/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/codescanner/f;


# direct methods
.method constructor <init>(Lcom/netease/codescanner/f;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/codescanner/f$a;->a:Lcom/netease/codescanner/f;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/codescanner/f$a;->a:Lcom/netease/codescanner/f;

    invoke-static {v0}, Lcom/netease/codescanner/f;->a(Lcom/netease/codescanner/f;)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
