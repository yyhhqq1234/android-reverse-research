.class public Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;
.super Ljava/lang/Object;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/webview/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareItem"
.end annotation


# instance fields
.field public iconId:I

.field public itemId:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/msdk/webview/WebViewActivity;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/msdk/webview/WebViewActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/WebViewActivity;
    .param p2, "iconId"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "itemId"    # Ljava/lang/String;

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    iput-object p4, p0, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;->itemId:Ljava/lang/String;

    .line 1139
    iput p2, p0, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;->iconId:I

    .line 1140
    iput-object p3, p0, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;->title:Ljava/lang/String;

    .line 1141
    return-void
.end method
