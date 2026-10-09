.class Lcom/tencent/msdk/notice/AlertMsgActivity$2;
.super Ljava/lang/Object;
.source "AlertMsgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/notice/AlertMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/notice/AlertMsgActivity;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/notice/AlertMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/notice/AlertMsgActivity;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$2;->this$0:Lcom/tencent/msdk/notice/AlertMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$2;->this$0:Lcom/tencent/msdk/notice/AlertMsgActivity;

    invoke-static {v0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->access$000(Lcom/tencent/msdk/notice/AlertMsgActivity;)V

    .line 365
    return-void
.end method
