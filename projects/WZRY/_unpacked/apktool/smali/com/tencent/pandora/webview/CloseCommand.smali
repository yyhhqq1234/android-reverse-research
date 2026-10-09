.class public Lcom/tencent/pandora/webview/CloseCommand;
.super Ljava/lang/Object;
.source "CloseCommand.java"

# interfaces
.implements Lcom/tencent/pandora/webview/WebViewCommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 11
    instance-of v0, p1, Lcom/tencent/pandora/webview/CloseCommand;

    if-eqz v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 14
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
