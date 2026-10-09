.class Lcom/tencent/friday/uikit/a/f/a$1;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/friday/uikit/a/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/friday/uikit/a/f/a;


# direct methods
.method constructor <init>(Lcom/tencent/friday/uikit/a/f/a;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tencent/friday/uikit/a/f/a$1;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Lcom/tencent/friday/uikit/a/f/a$1;->a:Lcom/tencent/friday/uikit/a/f/a;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$1;->a:Lcom/tencent/friday/uikit/a/f/a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/tencent/friday/uikit/a/f/a;->a(Lcom/tencent/friday/uikit/a/f/a;Z)Z

    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$1;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/a/f/a;->invalidate()V

    .line 90
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$1;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/a/f/a;->requestLayout()V

    .line 91
    return-void

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$1;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/f/a;->a(Lcom/tencent/friday/uikit/a/f/a;)V

    .line 97
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$1;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/a/f/a;->invalidate()V

    .line 98
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$1;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/a/f/a;->requestLayout()V

    .line 99
    return-void
.end method
