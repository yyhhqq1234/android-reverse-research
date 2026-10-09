.class Lcom/smoba/webview/WebViewEx$9;
.super Ljava/lang/Object;
.source "WebViewEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smoba/webview/WebViewEx;->SetBatteryLevel(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 814
    const-string v0, "openwebex in thread"

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 815
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smoba/webview/WebViewEx;->UpdateBatteryLevel()V

    .line 816
    return-void
.end method
