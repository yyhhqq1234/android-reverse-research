.class Lcom/netease/mpay/widget/webview/js/d;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field b:Z

.field final synthetic c:Lcom/netease/mpay/widget/webview/js/c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/webview/js/c;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/webview/js/d;->c:Lcom/netease/mpay/widget/webview/js/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    iput v0, p0, Lcom/netease/mpay/widget/webview/js/d;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/widget/webview/js/d;->b:Z

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
.method a(Landroid/webkit/WebView;I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x19

    if-gt p2, v2, :cond_1

    iput-boolean v0, p0, Lcom/netease/mpay/widget/webview/js/d;->b:Z

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/netease/mpay/widget/webview/js/d;->b:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inject "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/netease/mpay/widget/webview/js/d;->b:Z

    goto :goto_0
.end method
