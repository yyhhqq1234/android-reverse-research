.class Lcom/netease/dwrg/MediaContentObserver;
.super Landroid/database/ContentObserver;
.source "Client.java"


# instance fields
.field private mContentUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 142
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 143
    iput-object p2, p0, Lcom/netease/dwrg/MediaContentObserver;->mContentUri:Landroid/net/Uri;

    .line 144
    iput-object p1, p0, Lcom/netease/dwrg/MediaContentObserver;->mContext:Landroid/content/Context;

    .line 145
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 150
    iget-object v0, p0, Lcom/netease/dwrg/MediaContentObserver;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/netease/dwrg/Client;

    .line 151
    .local v0, "c":Lcom/netease/dwrg/Client;
    iget-object v1, p0, Lcom/netease/dwrg/MediaContentObserver;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/netease/dwrg/Client;->handleMediaContentChange(Landroid/net/Uri;)V

    .line 152
    return-void
.end method
