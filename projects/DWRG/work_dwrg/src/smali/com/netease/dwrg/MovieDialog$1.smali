.class Lcom/netease/dwrg/MovieDialog$1;
.super Ljava/lang/Object;
.source "MovieDialog.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/MovieDialog;->setView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/MovieDialog;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/MovieDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/MovieDialog;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/netease/dwrg/MovieDialog$1;->this$0:Lcom/netease/dwrg/MovieDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netease/dwrg/MovieDialog$1;->this$0:Lcom/netease/dwrg/MovieDialog;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/netease/dwrg/MovieDialog;->delayedHide(I)V

    .line 80
    return-void
.end method
