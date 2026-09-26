.class Lcom/netease/dwrg/MovieDialog$2;
.super Ljava/lang/Object;
.source "MovieDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 86
    iput-object p1, p0, Lcom/netease/dwrg/MovieDialog$2;->this$0:Lcom/netease/dwrg/MovieDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netease/dwrg/MovieDialog$2;->this$0:Lcom/netease/dwrg/MovieDialog;

    invoke-static {v0}, Lcom/netease/dwrg/MovieDialog;->access$000(Lcom/netease/dwrg/MovieDialog;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/netease/dwrg/MovieDialog$2;->this$0:Lcom/netease/dwrg/MovieDialog;

    invoke-static {v0}, Lcom/netease/dwrg/MovieDialog;->access$000(Lcom/netease/dwrg/MovieDialog;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xf06

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/netease/dwrg/MovieDialog$2;->this$0:Lcom/netease/dwrg/MovieDialog;

    invoke-static {v0}, Lcom/netease/dwrg/MovieDialog;->access$000(Lcom/netease/dwrg/MovieDialog;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x505

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method
