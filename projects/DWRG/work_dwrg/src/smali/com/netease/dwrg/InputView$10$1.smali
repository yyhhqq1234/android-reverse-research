.class Lcom/netease/dwrg/InputView$10$1;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/InputView$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/dwrg/InputView$10;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/InputView$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/netease/dwrg/InputView$10;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/netease/dwrg/InputView$10$1;->this$1:Lcom/netease/dwrg/InputView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dst"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 301
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    .end local p1    # "src":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 304
    .restart local p1    # "src":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/dwrg/InputView$10$1;->this$1:Lcom/netease/dwrg/InputView$10;

    iget-object v1, v1, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$1000(Lcom/netease/dwrg/InputView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    const-string p1, ""

    goto :goto_0
.end method
