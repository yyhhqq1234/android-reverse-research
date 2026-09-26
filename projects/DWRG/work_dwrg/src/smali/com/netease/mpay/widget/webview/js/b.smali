.class public Lcom/netease/mpay/widget/webview/js/b;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Ljava/lang/Integer;

.field final synthetic c:Lcom/netease/mpay/widget/webview/js/Config;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/widget/webview/js/Config;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/webview/js/b;->c:Lcom/netease/mpay/widget/webview/js/Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/widget/webview/js/b;->a:Z

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/widget/webview/js/b;->b:Ljava/lang/Integer;

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

.method synthetic constructor <init>(Lcom/netease/mpay/widget/webview/js/Config;Lcom/netease/mpay/widget/webview/js/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/webview/js/b;-><init>(Lcom/netease/mpay/widget/webview/js/Config;)V

    return-void
.end method

.method private constructor <init>(Lcom/netease/mpay/widget/webview/js/Config;Ljava/lang/Integer;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/mpay/widget/webview/js/b;->c:Lcom/netease/mpay/widget/webview/js/Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/widget/webview/js/b;->a:Z

    iput-object p2, p0, Lcom/netease/mpay/widget/webview/js/b;->b:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/mpay/widget/webview/js/Config;Ljava/lang/Integer;Lcom/netease/mpay/widget/webview/js/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/widget/webview/js/b;-><init>(Lcom/netease/mpay/widget/webview/js/Config;Ljava/lang/Integer;)V

    return-void
.end method
