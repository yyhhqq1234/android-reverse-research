.class Lcom/smoba/webview/ScreenShotListenManager$MediaContentObserver;
.super Landroid/database/ContentObserver;
.source "ScreenShotListenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smoba/webview/ScreenShotListenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaContentObserver"
.end annotation


# instance fields
.field private mContentUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/smoba/webview/ScreenShotListenManager;


# direct methods
.method public constructor <init>(Lcom/smoba/webview/ScreenShotListenManager;Landroid/net/Uri;Landroid/os/Handler;)V
    .locals 0
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/smoba/webview/ScreenShotListenManager$MediaContentObserver;->this$0:Lcom/smoba/webview/ScreenShotListenManager;

    .line 358
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 359
    iput-object p2, p0, Lcom/smoba/webview/ScreenShotListenManager$MediaContentObserver;->mContentUri:Landroid/net/Uri;

    .line 360
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 364
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 365
    iget-object v0, p0, Lcom/smoba/webview/ScreenShotListenManager$MediaContentObserver;->this$0:Lcom/smoba/webview/ScreenShotListenManager;

    iget-object v1, p0, Lcom/smoba/webview/ScreenShotListenManager$MediaContentObserver;->mContentUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/smoba/webview/ScreenShotListenManager;->access$0(Lcom/smoba/webview/ScreenShotListenManager;Landroid/net/Uri;)V

    .line 366
    return-void
.end method
