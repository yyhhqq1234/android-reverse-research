.class Lcom/tencent/msdk/notice/AlertMsgActivity$3;
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
    .line 368
    iput-object p1, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$3;->this$0:Lcom/tencent/msdk/notice/AlertMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$3;->this$0:Lcom/tencent/msdk/notice/AlertMsgActivity;

    invoke-static {v0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->access$100(Lcom/tencent/msdk/notice/AlertMsgActivity;)V

    .line 372
    return-void
.end method
