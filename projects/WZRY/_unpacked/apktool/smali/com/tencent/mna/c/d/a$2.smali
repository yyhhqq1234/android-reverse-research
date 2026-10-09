.class Lcom/tencent/mna/c/d/a$2;
.super Ljava/lang/Object;
.source "McAccelerator.java"

# interfaces
.implements Lcom/tencent/mna/b/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/c/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/c/d/a;


# direct methods
.method constructor <init>(Lcom/tencent/mna/c/d/a;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/tencent/mna/c/d/a$2;->a:Lcom/tencent/mna/c/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 1

    .prologue
    .line 294
    invoke-static {p1, p2, p3}, Lcom/tencent/mna/base/jni/d;->a(III)I

    move-result v0

    return v0
.end method

.method public a(IIIII)I
    .locals 1

    .prologue
    .line 284
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tencent/mna/base/jni/d;->a(IIIII)I

    move-result v0

    return v0
.end method

.method public a(IIIIILjava/lang/String;)I
    .locals 1

    .prologue
    .line 289
    invoke-static/range {p1 .. p6}, Lcom/tencent/mna/base/jni/d;->a(IIIIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/tencent/mna/c/d/a$2;->a:Lcom/tencent/mna/c/d/a;

    invoke-static {v0}, Lcom/tencent/mna/c/d/a;->a(Lcom/tencent/mna/c/d/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
