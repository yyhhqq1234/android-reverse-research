.class Lcom/tencent/liteav/renderer/e$j;
.super Ljava/lang/Object;
.source "TXCGLSurfaceViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/renderer/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/tencent/liteav/renderer/e$i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 763
    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/tencent/liteav/renderer/e$j;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/liteav/renderer/e$1;)V
    .locals 0

    .prologue
    .line 762
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/e$j;-><init>()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 822
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/tencent/liteav/renderer/e$j;->c:I

    .line 823
    iput-boolean v1, p0, Lcom/tencent/liteav/renderer/e$j;->e:Z

    .line 824
    iput-boolean v1, p0, Lcom/tencent/liteav/renderer/e$j;->b:Z

    .line 825
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tencent/liteav/renderer/e$i;)V
    .locals 1

    .prologue
    .line 769
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/tencent/liteav/renderer/e$i;->a(Lcom/tencent/liteav/renderer/e$i;Z)Z

    .line 770
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e$j;->g:Lcom/tencent/liteav/renderer/e$i;

    if-ne v0, p1, :cond_0

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/renderer/e$j;->g:Lcom/tencent/liteav/renderer/e$i;

    .line 773
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    monitor-exit p0

    return-void

    .line 769
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 804
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/tencent/liteav/renderer/e$j;->d:Z

    if-nez v2, :cond_1

    .line 805
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/e$j;->c()V

    .line 806
    const/16 v2, 0x1f01

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    .line 807
    iget v3, p0, Lcom/tencent/liteav/renderer/e$j;->c:I

    const/high16 v4, 0x20000

    if-ge v3, v4, :cond_0

    .line 808
    const-string v3, "Q3Dimension MSM7500 "

    .line 809
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/tencent/liteav/renderer/e$j;->e:Z

    .line 810
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 812
    :cond_0
    iget-boolean v2, p0, Lcom/tencent/liteav/renderer/e$j;->e:Z

    if-nez v2, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/e$j;->f:Z

    .line 818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/e$j;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    move v2, v1

    .line 809
    goto :goto_0

    :cond_3
    move v0, v1

    .line 812
    goto :goto_1

    .line 804
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .locals 1

    .prologue
    .line 797
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/e$j;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 1

    .prologue
    .line 800
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/e$j;->c()V

    .line 801
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/e$j;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 800
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/tencent/liteav/renderer/e$i;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 776
    iget-object v1, p0, Lcom/tencent/liteav/renderer/e$j;->g:Lcom/tencent/liteav/renderer/e$i;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/tencent/liteav/renderer/e$j;->g:Lcom/tencent/liteav/renderer/e$i;

    if-nez v1, :cond_2

    .line 777
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/renderer/e$j;->g:Lcom/tencent/liteav/renderer/e$i;

    .line 778
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 788
    :cond_1
    :goto_0
    return v0

    .line 781
    :cond_2
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/e$j;->c()V

    .line 782
    iget-boolean v1, p0, Lcom/tencent/liteav/renderer/e$j;->e:Z

    if-nez v1, :cond_1

    .line 785
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e$j;->g:Lcom/tencent/liteav/renderer/e$i;

    if-eqz v0, :cond_3

    .line 786
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e$j;->g:Lcom/tencent/liteav/renderer/e$i;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/e$i;->h()V

    .line 788
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/tencent/liteav/renderer/e$i;)V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e$j;->g:Lcom/tencent/liteav/renderer/e$i;

    if-ne v0, p1, :cond_0

    .line 792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/renderer/e$j;->g:Lcom/tencent/liteav/renderer/e$i;

    .line 794
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 795
    return-void
.end method
