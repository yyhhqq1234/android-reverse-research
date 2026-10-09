.class public abstract Lcom/netease/epay/sdk/h5c/AbsWebTurbo;
.super Ljava/lang/Object;
.source "AbsWebTurbo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract init(Landroid/content/Context;Lcom/netease/epay/sdk/h5c/WebTurboConfig;)V
.end method

.method public abstract initOfflinePkg(Landroidx/fragment/app/FragmentActivity;)V
.end method

.method public abstract interceptRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end method
