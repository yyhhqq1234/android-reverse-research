.class final Lcom/tencent/mna/b/d/b$2;
.super Ljava/lang/Object;
.source "DiagnoseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b/d/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tencent/mna/b/d/b$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mna/b/d/b$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 86
    new-instance v1, Lcom/tencent/mna/b/d/c;

    iget-object v0, p0, Lcom/tencent/mna/b/d/b$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mna/b/d/b$2;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/tencent/mna/b/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/tencent/mna/b/d/b;->a(Lcom/tencent/mna/b/d/c;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v0, "0.0.0.0"

    invoke-static {v1, v0}, Lcom/tencent/mna/b/d/b;->a(Lcom/tencent/mna/b/d/c;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tencent/mna/b/d/a;

    .line 100
    invoke-static {v1, v0}, Lcom/tencent/mna/b/d/b;->a(Lcom/tencent/mna/b/d/c;[Lcom/tencent/mna/b/d/a;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 105
    invoke-static {v1, v0}, Lcom/tencent/mna/b/d/b;->a(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/b/d/a;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v2

    .line 111
    invoke-static {v1, v2}, Lcom/tencent/mna/b/d/b;->a(Lcom/tencent/mna/b/d/c;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 114
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/base/f/r;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v1, v0, v2}, Lcom/tencent/mna/b/d/b;->a(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/b/d/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v0

    .line 123
    invoke-static {v1, v2, v3}, Lcom/tencent/mna/b/d/b;->a(Lcom/tencent/mna/b/d/c;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;I)I

    move-result v2

    .line 129
    invoke-virtual {v1, v0, v2}, Lcom/tencent/mna/b/d/c;->a(II)V

    .line 130
    invoke-static {v1}, Lcom/tencent/mna/b/d/b;->a(Lcom/tencent/mna/b/d/c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiagnoseManager queryKartin failed, exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Lcom/tencent/mna/b/d/c;->d()Lcom/tencent/mna/KartinRet;

    move-result-object v0

    .line 134
    invoke-static {v1, v0}, Lcom/tencent/mna/b/d/b;->a(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/KartinRet;)V

    goto :goto_0
.end method
