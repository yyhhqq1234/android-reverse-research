.class public Lcom/tencent/mna/c/e/c;
.super Ljava/lang/Object;
.source "TCallPlatform.java"


# instance fields
.field private a:Lcom/tencent/mna/b/a/f;

.field private b:Lcom/tencent/mna/b/d/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/tencent/mna/c/e/a;

    invoke-direct {v0}, Lcom/tencent/mna/c/e/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/c/e/c;->a:Lcom/tencent/mna/b/a/f;

    .line 11
    new-instance v0, Lcom/tencent/mna/c/e/b;

    invoke-direct {v0}, Lcom/tencent/mna/c/e/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/c/e/c;->b:Lcom/tencent/mna/b/d/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/mna/b/a/f;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/tencent/mna/c/e/c;->a:Lcom/tencent/mna/b/a/f;

    return-object v0
.end method

.method public b()Lcom/tencent/mna/b/d/a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/mna/c/e/c;->b:Lcom/tencent/mna/b/d/a;

    return-object v0
.end method
