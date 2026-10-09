.class final Lcom/tencent/mna/base/d/b$2;
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


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/tencent/mna/base/d/b$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/d/b;->d()I

    move-result v0

    iget v1, p0, Lcom/tencent/mna/base/d/b$2;->a:I

    add-int/lit16 v1, v1, 0x258

    invoke-static {v0, v1}, Lcom/tencent/mna/base/jni/e;->a(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0
.end method
