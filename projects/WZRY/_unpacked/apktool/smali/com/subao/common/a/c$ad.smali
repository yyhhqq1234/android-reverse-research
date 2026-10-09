.class Lcom/subao/common/a/c$ad;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Lcom/subao/common/a/c$ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ad"
.end annotation


# instance fields
.field private a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1596
    iput p1, p0, Lcom/subao/common/a/c$ad;->a:I

    .line 1597
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 1601
    new-instance v0, Lcom/subao/common/k/b$d;

    iget v1, p0, Lcom/subao/common/a/c$ad;->a:I

    invoke-direct {v0, v1}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 1607
    return-void
.end method
