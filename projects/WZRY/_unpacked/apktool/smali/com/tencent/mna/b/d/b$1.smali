.class final Lcom/tencent/mna/b/d/b$1;
.super Ljava/lang/Object;
.source "DiagnoseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b/d/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 46
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->d(Landroid/content/Context;)V

    .line 48
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiagnoseManager init, networkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 50
    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const/4 v0, 0x1

    const-string v1, "0.0.0.0"

    invoke-static {v0, v1}, Lcom/tencent/mna/b/d/b;->a(ILjava/lang/String;)I

    move-result v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiagnoseManager init, errno:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 57
    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mna/base/a/c;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "DiagnoseManager init, TMSDKWifiHelper init"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mna/base/f/p;->a(Landroid/content/Context;Z)I

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Lcom/tencent/mna/base/a/c;->y()I

    move-result v0

    int-to-double v0, v0

    .line 62
    invoke-static {}, Lcom/tencent/mna/base/a/c;->z()I

    move-result v2

    int-to-double v2, v2

    .line 63
    invoke-static {}, Lcom/tencent/mna/base/a/c;->A()I

    move-result v4

    int-to-double v4, v4

    .line 61
    invoke-static/range {v0 .. v5}, Lcom/tencent/mna/base/f/p;->a(DDD)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiagnoseManager init failed, exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
