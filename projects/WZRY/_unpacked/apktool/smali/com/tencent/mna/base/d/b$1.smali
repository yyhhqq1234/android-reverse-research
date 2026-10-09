.class final Lcom/tencent/mna/base/d/b$1;
.super Ljava/lang/Object;
.source "LossRateCounter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/base/d/b;->b(Ljava/lang/String;ILjava/lang/String;IIIIIFIIIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/tencent/mna/base/d/b$1;->a:I

    iput p2, p0, Lcom/tencent/mna/base/d/b$1;->b:I

    iput p3, p0, Lcom/tencent/mna/base/d/b$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 105
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/d/b;->d()I

    move-result v0

    invoke-static {}, Lcom/tencent/mna/base/d/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/f;->k(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/base/d/b;->f()I

    move-result v2

    invoke-static {}, Lcom/tencent/mna/base/d/b;->g()I

    move-result v3

    iget v4, p0, Lcom/tencent/mna/base/d/b$1;->a:I

    iget v5, p0, Lcom/tencent/mna/base/d/b$1;->b:I

    iget v6, p0, Lcom/tencent/mna/base/d/b$1;->c:I

    invoke-static/range {v0 .. v6}, Lcom/tencent/mna/base/jni/e;->a(I[BIIIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method
