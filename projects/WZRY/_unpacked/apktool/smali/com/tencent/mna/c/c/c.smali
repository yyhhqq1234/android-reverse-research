.class public Lcom/tencent/mna/c/c/c;
.super Ljava/lang/Object;
.source "InoPlatform.java"


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
    new-instance v0, Lcom/tencent/mna/c/c/a;

    invoke-direct {v0}, Lcom/tencent/mna/c/c/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/c/c/c;->a:Lcom/tencent/mna/b/a/f;

    .line 10
    new-instance v0, Lcom/tencent/mna/c/c/b;

    invoke-direct {v0}, Lcom/tencent/mna/c/c/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/c/c/c;->b:Lcom/tencent/mna/b/d/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/mna/b/a/f;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/tencent/mna/c/c/c;->a:Lcom/tencent/mna/b/a/f;

    return-object v0
.end method

.method public b()Lcom/tencent/mna/b/d/a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tencent/mna/c/c/c;->b:Lcom/tencent/mna/b/d/a;

    return-object v0
.end method
