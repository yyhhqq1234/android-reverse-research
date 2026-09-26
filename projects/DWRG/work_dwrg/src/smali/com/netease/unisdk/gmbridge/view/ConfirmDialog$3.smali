.class Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$3;
.super Ljava/lang/Object;
.source "ConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->setOnclickListener(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;

.field final synthetic val$onClickListener:Landroid/view/View$OnClickListener;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;Landroid/widget/TextView;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$3;->this$0:Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$3;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$3;->val$onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 65
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 56
    :pswitch_1
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$3;->val$textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$3;->this$0:Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;

    invoke-static {v2}, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->access$000(Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 59
    :pswitch_2
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$3;->val$textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$3;->this$0:Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;

    invoke-static {v2}, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->access$100(Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$3;->val$onClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$3;->val$textView:Landroid/widget/TextView;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
