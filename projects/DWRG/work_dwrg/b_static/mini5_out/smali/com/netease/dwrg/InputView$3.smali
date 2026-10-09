.class Lcom/netease/dwrg/InputView$3;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 178
    iput-object p1, p0, Lcom/netease/dwrg/InputView$3;->this$0:Lcom/netease/dwrg/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 180
    iget-object p1, p0, Lcom/netease/dwrg/InputView$3;->this$0:Lcom/netease/dwrg/InputView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netease/dwrg/InputView;->inputFinish(Z)V

    return-void
.end method
