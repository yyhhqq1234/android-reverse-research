.class Lcom/netease/dwrg/Client$5;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/Client;->openWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/Client;

.field final synthetic val$str_url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/Client;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/Client;

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/netease/dwrg/Client$5;->this$0:Lcom/netease/dwrg/Client;

    iput-object p2, p0, Lcom/netease/dwrg/Client$5;->val$str_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/netease/dwrg/Client$5;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0}, Lcom/netease/dwrg/Client;->access$700(Lcom/netease/dwrg/Client;)Lcom/netease/dwrg/NeoXWebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/netease/dwrg/Client$5;->this$0:Lcom/netease/dwrg/Client;

    new-instance v1, Lcom/netease/dwrg/NeoXWebView;

    iget-object v2, p0, Lcom/netease/dwrg/Client$5;->this$0:Lcom/netease/dwrg/Client;

    invoke-direct {v1, v2}, Lcom/netease/dwrg/NeoXWebView;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/netease/dwrg/Client;->access$702(Lcom/netease/dwrg/Client;Lcom/netease/dwrg/NeoXWebView;)Lcom/netease/dwrg/NeoXWebView;

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Client$5;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0}, Lcom/netease/dwrg/Client;->access$700(Lcom/netease/dwrg/Client;)Lcom/netease/dwrg/NeoXWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/dwrg/NeoXWebView;->show()V

    .line 1177
    iget-object v0, p0, Lcom/netease/dwrg/Client$5;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0}, Lcom/netease/dwrg/Client;->access$700(Lcom/netease/dwrg/Client;)Lcom/netease/dwrg/NeoXWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/dwrg/Client$5;->val$str_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/dwrg/NeoXWebView;->loadUrl(Ljava/lang/String;)V

    .line 1178
    return-void
.end method
