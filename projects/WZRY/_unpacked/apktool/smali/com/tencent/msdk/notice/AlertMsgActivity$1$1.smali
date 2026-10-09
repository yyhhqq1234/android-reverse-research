.class Lcom/tencent/msdk/notice/AlertMsgActivity$1$1;
.super Ljava/lang/Object;
.source "AlertMsgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/notice/AlertMsgActivity$1;->showError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/msdk/notice/AlertMsgActivity$1;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/notice/AlertMsgActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/msdk/notice/AlertMsgActivity$1;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1$1;->this$1:Lcom/tencent/msdk/notice/AlertMsgActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1$1;->this$1:Lcom/tencent/msdk/notice/AlertMsgActivity$1;

    invoke-virtual {v0}, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->showLoading()V

    .line 331
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1$1;->this$1:Lcom/tencent/msdk/notice/AlertMsgActivity$1;

    iget-object v0, v0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->val$noticeContent:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->reload()V

    .line 332
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1$1;->this$1:Lcom/tencent/msdk/notice/AlertMsgActivity$1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->isFailed:Z

    .line 333
    return-void
.end method
