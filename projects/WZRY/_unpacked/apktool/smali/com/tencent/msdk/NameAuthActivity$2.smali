.class Lcom/tencent/msdk/NameAuthActivity$2;
.super Ljava/lang/Object;
.source "NameAuthActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/NameAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/NameAuthActivity;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/NameAuthActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/tencent/msdk/NameAuthActivity$2;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 409
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$2;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$300(Lcom/tencent/msdk/NameAuthActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$2;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$300(Lcom/tencent/msdk/NameAuthActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity$2;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v1}, Lcom/tencent/msdk/NameAuthActivity;->access$100(Lcom/tencent/msdk/NameAuthActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 412
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$2;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$300(Lcom/tencent/msdk/NameAuthActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$2;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$300(Lcom/tencent/msdk/NameAuthActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$2;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$300(Lcom/tencent/msdk/NameAuthActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$2;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$400(Lcom/tencent/msdk/NameAuthActivity;)Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 402
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 405
    return-void
.end method
