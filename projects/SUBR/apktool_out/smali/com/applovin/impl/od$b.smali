.class final Lcom/applovin/impl/od$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/gd$c;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/od;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field final synthetic b:Lcom/applovin/impl/od;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/od;Lcom/applovin/impl/gd;)V
    .locals 0

    .line 1853
    iput-object p1, p0, Lcom/applovin/impl/od$b;->b:Lcom/applovin/impl/od;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1854
    invoke-static {p0}, Lcom/applovin/impl/xp;->a(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/od$b;->a:Landroid/os/Handler;

    .line 1855
    invoke-interface {p2, p0, p1}, Lcom/applovin/impl/gd;->a(Lcom/applovin/impl/gd$c;Landroid/os/Handler;)V

    return-void
.end method

.method private a(J)V
    .locals 4

    .line 1892
    iget-object v0, p0, Lcom/applovin/impl/od$b;->b:Lcom/applovin/impl/od;

    iget-object v1, v0, Lcom/applovin/impl/od;->q1:Lcom/applovin/impl/od$b;

    if-eq p0, v1, :cond_0

    return-void

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    .line 1897
    invoke-static {v0}, Lcom/applovin/impl/od;->a(Lcom/applovin/impl/od;)V

    goto :goto_0

    .line 1900
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/od;->i(J)V
    :try_end_0
    .catch Lcom/applovin/impl/z7; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1902
    iget-object p2, p0, Lcom/applovin/impl/od$b;->b:Lcom/applovin/impl/od;

    invoke-static {p2, p1}, Lcom/applovin/impl/od;->a(Lcom/applovin/impl/od;Lcom/applovin/impl/z7;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/gd;JJ)V
    .locals 0

    .line 1903
    sget p1, Lcom/applovin/impl/xp;->a:I

    const/16 p4, 0x1e

    if-ge p1, p4, :cond_0

    .line 1904
    iget-object p1, p0, Lcom/applovin/impl/od$b;->a:Landroid/os/Handler;

    const/16 p4, 0x20

    shr-long p4, p2, p4

    long-to-int p5, p4

    long-to-int p3, p2

    const/4 p2, 0x0

    .line 1905
    invoke-static {p1, p2, p5, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 1910
    iget-object p2, p0, Lcom/applovin/impl/od$b;->a:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 1912
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/od$b;->a(J)V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1882
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1884
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/applovin/impl/xp;->c(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/od$b;->a(J)V

    const/4 p1, 0x1

    return p1
.end method
