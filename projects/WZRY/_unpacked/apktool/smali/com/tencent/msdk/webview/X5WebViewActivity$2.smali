.class Lcom/tencent/msdk/webview/X5WebViewActivity$2;
.super Ljava/lang/Object;
.source "X5WebViewActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$2;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 473
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v1, "\u5b58\u50a8\u56fe\u50cf"

    if-ne v0, v1, :cond_0

    .line 475
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$2;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$100(Lcom/tencent/msdk/webview/X5WebViewActivity;)V

    .line 476
    const/4 v0, 0x1

    .line 478
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
