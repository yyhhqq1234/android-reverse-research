.class Lcom/subao/common/k/d$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkWatcherImpl_Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/k/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/subao/common/k/b$a;


# direct methods
.method public constructor <init>(Lcom/subao/common/k/b$a;)V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 114
    if-nez p1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null callback"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/subao/common/k/d$a;->a:Lcom/subao/common/k/b$a;

    .line 118
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/subao/common/k/d$a;->a:Lcom/subao/common/k/b$a;

    new-instance v1, Lcom/subao/common/k/e;

    invoke-direct {v1, p1}, Lcom/subao/common/k/e;-><init>(Landroid/net/Network;)V

    invoke-interface {v0, v1}, Lcom/subao/common/k/b$a;->b(Lcom/subao/common/k/b$b;)V

    .line 123
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/subao/common/k/d$a;->a:Lcom/subao/common/k/b$a;

    new-instance v1, Lcom/subao/common/k/e;

    invoke-direct {v1, p1}, Lcom/subao/common/k/e;-><init>(Landroid/net/Network;)V

    invoke-interface {v0, v1}, Lcom/subao/common/k/b$a;->c(Lcom/subao/common/k/b$b;)V

    .line 128
    return-void
.end method
