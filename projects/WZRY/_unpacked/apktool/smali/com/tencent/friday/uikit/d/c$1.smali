.class Lcom/tencent/friday/uikit/d/c$1;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/friday/uikit/d/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tencent/friday/uikit/d/c;


# direct methods
.method constructor <init>(Lcom/tencent/friday/uikit/d/c;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/c$1;->b:Lcom/tencent/friday/uikit/d/c;

    iput-object p2, p0, Lcom/tencent/friday/uikit/d/c$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 167
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/c$1;->b:Lcom/tencent/friday/uikit/d/c;

    invoke-static {v1}, Lcom/tencent/friday/uikit/d/c;->a(Lcom/tencent/friday/uikit/d/c;)Lcom/tencent/friday/uikit/d/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 168
    return-void
.end method
