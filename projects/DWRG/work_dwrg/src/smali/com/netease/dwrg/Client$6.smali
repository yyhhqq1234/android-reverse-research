.class Lcom/netease/dwrg/Client$6;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/Client;->removeWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/Client;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/Client;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/Client;

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/netease/dwrg/Client$6;->this$0:Lcom/netease/dwrg/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/netease/dwrg/Client$6;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0}, Lcom/netease/dwrg/Client;->access$700(Lcom/netease/dwrg/Client;)Lcom/netease/dwrg/NeoXWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/dwrg/NeoXWebView;->hide()V

    .line 1189
    return-void
.end method
