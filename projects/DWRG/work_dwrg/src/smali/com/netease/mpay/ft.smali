.class Lcom/netease/mpay/ft;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;ZLjava/lang/Integer;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ft;->c:Lcom/netease/mpay/MpayApi;

    iput-boolean p2, p0, Lcom/netease/mpay/ft;->a:Z

    iput-object p3, p0, Lcom/netease/mpay/ft;->b:Ljava/lang/Integer;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/ft;->c:Lcom/netease/mpay/MpayApi;

    iget-boolean v1, p0, Lcom/netease/mpay/ft;->a:Z

    iget-object v2, p0, Lcom/netease/mpay/ft;->b:Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi;ZLjava/lang/Integer;)V

    return-void
.end method
