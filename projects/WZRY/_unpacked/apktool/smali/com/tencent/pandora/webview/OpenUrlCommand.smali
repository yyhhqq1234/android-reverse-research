.class public Lcom/tencent/pandora/webview/OpenUrlCommand;
.super Ljava/lang/Object;
.source "OpenUrlCommand.java"

# interfaces
.implements Lcom/tencent/pandora/webview/WebViewCommand;


# instance fields
.field public color:I

.field public height:I

.field public offsetX:I

.field public offsetY:I

.field public showUntilFullyLoaded:Z

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "White"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->color:I

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->showUntilFullyLoaded:Z

    .line 18
    iput p1, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->width:I

    .line 19
    iput p2, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->height:I

    .line 20
    iput p3, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->offsetX:I

    .line 21
    iput p4, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->offsetY:I

    .line 22
    iput-object p5, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->url:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "color"    # I
    .param p7, "delayShow"    # Z

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "White"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->color:I

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->showUntilFullyLoaded:Z

    .line 42
    iput p1, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->width:I

    .line 43
    iput p2, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->height:I

    .line 44
    iput p3, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->offsetX:I

    .line 45
    iput p4, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->offsetY:I

    .line 46
    iput-object p5, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->url:Ljava/lang/String;

    .line 47
    iput p6, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->color:I

    .line 48
    iput-boolean p7, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->showUntilFullyLoaded:Z

    .line 49
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "color"    # Ljava/lang/String;
    .param p7, "delayShow"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v1, "White"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->color:I

    .line 15
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->showUntilFullyLoaded:Z

    .line 27
    iput p1, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->width:I

    .line 28
    iput p2, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->height:I

    .line 29
    iput p3, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->offsetX:I

    .line 30
    iput p4, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->offsetY:I

    .line 31
    iput-object p5, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->url:Ljava/lang/String;

    .line 33
    :try_start_0
    invoke-static {p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->color:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    iput-boolean p7, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->showUntilFullyLoaded:Z

    .line 38
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Pandora WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parse Color("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 53
    instance-of v1, p1, Lcom/tencent/pandora/webview/OpenUrlCommand;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 54
    check-cast v0, Lcom/tencent/pandora/webview/OpenUrlCommand;

    .line 55
    .local v0, "other":Lcom/tencent/pandora/webview/OpenUrlCommand;
    iget v1, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->width:I

    iget v2, v0, Lcom/tencent/pandora/webview/OpenUrlCommand;->width:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->height:I

    iget v2, v0, Lcom/tencent/pandora/webview/OpenUrlCommand;->height:I

    if-ne v1, v2, :cond_0

    .line 56
    iget v1, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->offsetX:I

    iget v2, v0, Lcom/tencent/pandora/webview/OpenUrlCommand;->offsetX:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->offsetY:I

    iget v2, v0, Lcom/tencent/pandora/webview/OpenUrlCommand;->offsetY:I

    if-ne v1, v2, :cond_0

    .line 57
    iget-object v1, p0, Lcom/tencent/pandora/webview/OpenUrlCommand;->url:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/pandora/webview/OpenUrlCommand;->url:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    .line 55
    const/4 v1, 0x1

    .line 59
    .end local v0    # "other":Lcom/tencent/pandora/webview/OpenUrlCommand;
    :goto_0
    return v1

    .line 55
    .restart local v0    # "other":Lcom/tencent/pandora/webview/OpenUrlCommand;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 59
    .end local v0    # "other":Lcom/tencent/pandora/webview/OpenUrlCommand;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method
