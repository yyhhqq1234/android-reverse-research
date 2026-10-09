.class Lcom/tencent/mna/c/e/a$1;
.super Ljava/lang/Object;
.source "TCallAccelerator.java"

# interfaces
.implements Lcom/tencent/mna/b/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/c/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/c/e/a;


# direct methods
.method constructor <init>(Lcom/tencent/mna/c/e/a;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/tencent/mna/c/e/a$1;->a:Lcom/tencent/mna/c/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/jni/f;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(IIIII)I
    .locals 1

    .prologue
    .line 143
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tencent/mna/base/jni/f;->a(IIIII)I

    move-result v0

    return v0
.end method

.method public a(IIIIILjava/lang/String;)I
    .locals 1

    .prologue
    .line 148
    invoke-static/range {p1 .. p6}, Lcom/tencent/mna/base/jni/f;->a(IIIIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
