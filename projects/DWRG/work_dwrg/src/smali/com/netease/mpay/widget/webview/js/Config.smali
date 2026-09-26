.class public Lcom/netease/mpay/widget/webview/js/Config;
.super Ljava/lang/Object;


# instance fields
.field public appType:Ljava/lang/String;

.field public debug:Z

.field public isLandscape:Z

.field public uploadFile:Lcom/netease/mpay/widget/webview/js/b;

.field public versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/netease/mpay/widget/webview/js/Config;->isLandscape:Z

    iput-object p2, p0, Lcom/netease/mpay/widget/webview/js/Config;->versionCode:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/netease/mpay/widget/webview/js/Config;->debug:Z

    iput-object p4, p0, Lcom/netease/mpay/widget/webview/js/Config;->appType:Ljava/lang/String;

    new-instance v0, Lcom/netease/mpay/widget/webview/js/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/widget/webview/js/b;-><init>(Lcom/netease/mpay/widget/webview/js/Config;Lcom/netease/mpay/widget/webview/js/a;)V

    iput-object v0, p0, Lcom/netease/mpay/widget/webview/js/Config;->uploadFile:Lcom/netease/mpay/widget/webview/js/b;

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
.method public enableUploadFile(Ljava/lang/Integer;)Lcom/netease/mpay/widget/webview/js/Config;
    .locals 2

    new-instance v0, Lcom/netease/mpay/widget/webview/js/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/netease/mpay/widget/webview/js/b;-><init>(Lcom/netease/mpay/widget/webview/js/Config;Ljava/lang/Integer;Lcom/netease/mpay/widget/webview/js/a;)V

    iput-object v0, p0, Lcom/netease/mpay/widget/webview/js/Config;->uploadFile:Lcom/netease/mpay/widget/webview/js/b;

    return-object p0
.end method
