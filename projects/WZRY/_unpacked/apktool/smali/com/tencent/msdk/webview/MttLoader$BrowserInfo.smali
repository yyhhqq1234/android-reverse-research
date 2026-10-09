.class public Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;
.super Ljava/lang/Object;
.source "MttLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/webview/MttLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrowserInfo"
.end annotation


# instance fields
.field public browserType:I

.field public quahead:Ljava/lang/String;

.field public ver:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput v0, p0, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->browserType:I

    .line 155
    iput v0, p0, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->ver:I

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;

    return-void
.end method
