.class Lcom/netease/download/handler/Dispatcher$Property;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/handler/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Property"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field param:Lcom/netease/download/downloader/DownloadParams;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netease/download/downloader/DownloadParams;)V
    .locals 0
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pParam"    # Lcom/netease/download/downloader/DownloadParams;

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/netease/download/handler/Dispatcher$Property;->context:Landroid/content/Context;

    .line 202
    iput-object p2, p0, Lcom/netease/download/handler/Dispatcher$Property;->param:Lcom/netease/download/downloader/DownloadParams;

    .line 203
    return-void
.end method
