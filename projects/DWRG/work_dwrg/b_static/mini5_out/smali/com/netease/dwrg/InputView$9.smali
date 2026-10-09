.class Lcom/netease/dwrg/InputView$9;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/InputView;->setType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/InputView;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/InputView;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/netease/dwrg/InputView$9;->this$0:Lcom/netease/dwrg/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/netease/dwrg/InputView$9;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v0}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/dwrg/InputView$9;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$600(Lcom/netease/dwrg/InputView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method
