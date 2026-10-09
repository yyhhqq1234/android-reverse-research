.class Lcom/netease/dwrg/InputView$12$2;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/InputView$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/dwrg/InputView$12;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/InputView$12;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/netease/dwrg/InputView$12$2;->this$1:Lcom/netease/dwrg/InputView$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 421
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p1

    .line 424
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/netease/dwrg/InputView$12$2;->this$1:Lcom/netease/dwrg/InputView$12;

    iget-object p4, p4, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {p4}, Lcom/netease/dwrg/InputView;->access$1300(Lcom/netease/dwrg/InputView;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p1

    :cond_1
    return-object p2
.end method
