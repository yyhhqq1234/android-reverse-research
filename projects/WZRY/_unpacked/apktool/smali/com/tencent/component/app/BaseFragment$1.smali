.class Lcom/tencent/component/app/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/app/BaseFragment;->showNotifyMessage(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/app/BaseFragment;

.field final synthetic val$gravity:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/component/app/BaseFragment;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/app/BaseFragment;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/tencent/component/app/BaseFragment$1;->this$0:Lcom/tencent/component/app/BaseFragment;

    iput-object p2, p0, Lcom/tencent/component/app/BaseFragment$1;->val$msg:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/component/app/BaseFragment$1;->val$gravity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 185
    iget-object v1, p0, Lcom/tencent/component/app/BaseFragment$1;->this$0:Lcom/tencent/component/app/BaseFragment;

    invoke-static {v1}, Lcom/tencent/component/app/BaseFragment;->access$000(Lcom/tencent/component/app/BaseFragment;)Landroid/widget/Toast;

    move-result-object v0

    .line 186
    .local v0, "toast":Landroid/widget/Toast;
    iget-object v1, p0, Lcom/tencent/component/app/BaseFragment$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget v1, p0, Lcom/tencent/component/app/BaseFragment$1;->val$gravity:I

    invoke-virtual {v0}, Landroid/widget/Toast;->getXOffset()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/Toast;->getYOffset()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 188
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 189
    return-void
.end method
