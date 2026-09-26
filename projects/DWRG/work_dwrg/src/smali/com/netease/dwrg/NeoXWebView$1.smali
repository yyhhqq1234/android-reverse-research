.class Lcom/netease/dwrg/NeoXWebView$1;
.super Ljava/lang/Object;
.source "NeoXWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/NeoXWebView;->createLayout(Landroid/app/Activity;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/NeoXWebView;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/NeoXWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/NeoXWebView;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/netease/dwrg/NeoXWebView$1;->this$0:Lcom/netease/dwrg/NeoXWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netease/dwrg/NeoXWebView$1;->this$0:Lcom/netease/dwrg/NeoXWebView;

    invoke-virtual {v0}, Lcom/netease/dwrg/NeoXWebView;->hide()V

    .line 108
    return-void
.end method
