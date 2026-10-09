.class public Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;
.super Ljava/lang/Object;
.source "WebViewActivityPrior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareItem"
.end annotation


# instance fields
.field public iconId:I

.field public itemId:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;
    .param p2, "iconId"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "itemId"    # Ljava/lang/String;

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    iput-object p4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;->itemId:Ljava/lang/String;

    .line 1015
    iput p2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;->iconId:I

    .line 1016
    iput-object p3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;->title:Ljava/lang/String;

    .line 1017
    return-void
.end method
