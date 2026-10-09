.class public Lcom/tencent/hawk/bridge/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private final right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TR;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<TL;TR;>;"
    .local p1, "left":Ljava/lang/Object;, "TL;"
    .local p2, "right":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/tencent/hawk/bridge/Pair;->left:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Lcom/tencent/hawk/bridge/Pair;->right:Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<TL;TR;>;"
    const/4 v1, 0x0

    .line 25
    instance-of v2, p1, Lcom/tencent/hawk/bridge/Pair;

    if-nez v2, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 26
    check-cast v0, Lcom/tencent/hawk/bridge/Pair;

    .line 27
    .local v0, "pairo":Lcom/tencent/hawk/bridge/Pair;
    iget-object v2, p0, Lcom/tencent/hawk/bridge/Pair;->left:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/hawk/bridge/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    iget-object v2, p0, Lcom/tencent/hawk/bridge/Pair;->right:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/hawk/bridge/Pair;->getRight()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getLeft()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<TL;TR;>;"
    iget-object v0, p0, Lcom/tencent/hawk/bridge/Pair;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<TL;TR;>;"
    iget-object v0, p0, Lcom/tencent/hawk/bridge/Pair;->right:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 21
    .local p0, "this":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<TL;TR;>;"
    iget-object v0, p0, Lcom/tencent/hawk/bridge/Pair;->left:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/hawk/bridge/Pair;->right:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
