.class Lcom/netease/mpay/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/al;


# direct methods
.method constructor <init>(Lcom/netease/mpay/al;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ay;->a:Lcom/netease/mpay/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/ay;->a:Lcom/netease/mpay/al;

    invoke-static {v0}, Lcom/netease/mpay/al;->b(Lcom/netease/mpay/al;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ay;->a:Lcom/netease/mpay/al;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/netease/mpay/al;->a(Lcom/netease/mpay/al;Ljava/lang/String;Z)V

    return-void
.end method
