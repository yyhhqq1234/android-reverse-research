.class Lcom/subao/common/k/b$c;
.super Ljava/lang/Object;
.source "NetworkWatcher.java"

# interfaces
.implements Lcom/subao/common/k/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/k/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput p1, p0, Lcom/subao/common/k/b$c;->a:I

    .line 178
    return-void
.end method


# virtual methods
.method public a(Lcom/subao/common/k/b$e;Lcom/subao/common/k/b$a;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Lcom/subao/common/k/b$d;

    iget v1, p0, Lcom/subao/common/k/b$c;->a:I

    invoke-direct {v0, v1}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method
