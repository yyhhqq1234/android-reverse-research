.class public Lcom/tencent/friday/uikit/b/b/b;
.super Ljava/lang/Object;
.source "UKExceptionManager.java"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 19
    :try_start_0
    new-instance v0, Lcom/tencent/friday/uikit/b/b/a;

    invoke-direct {v0, p0}, Lcom/tencent/friday/uikit/b/b/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/tencent/friday/uikit/b/b/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "friday throw exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/d/a;->c(Ljava/lang/String;)V

    .line 23
    return-void
.end method
