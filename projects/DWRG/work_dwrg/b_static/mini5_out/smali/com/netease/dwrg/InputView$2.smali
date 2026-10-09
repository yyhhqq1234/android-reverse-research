.class Lcom/netease/dwrg/InputView$2;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/InputView;-><init>(Landroid/app/Activity;)V
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

    .line 161
    iput-object p1, p0, Lcom/netease/dwrg/InputView$2;->this$0:Lcom/netease/dwrg/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/netease/dwrg/InputView$2;->this$0:Lcom/netease/dwrg/InputView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/netease/dwrg/InputView;->inputFinish(Z)V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
