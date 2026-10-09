.class public Lcom/tencent/mna/c/d/b;
.super Ljava/lang/Object;
.source "McDgnSpeedTester.java"

# interfaces
.implements Lcom/tencent/mna/b/d/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/tencent/mna/c/d/b;->a:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/tencent/mna/c/d/b;->b:I

    .line 12
    iput v1, p0, Lcom/tencent/mna/c/d/b;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 16
    invoke-static {}, Lcom/tencent/mna/base/a/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/c/d/b;->a:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/tencent/mna/base/a/c;->d()I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/c/d/b;->b:I

    .line 18
    iget-object v0, p0, Lcom/tencent/mna/c/d/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/f/f;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/c/d/b;->b:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/base/jni/d;->a(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 2

    .prologue
    .line 23
    iget v0, p0, Lcom/tencent/mna/c/d/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mna/c/d/b;->c:I

    const/16 v1, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/tencent/mna/base/jni/d;->b(III)I

    move-result v0

    return v0
.end method
