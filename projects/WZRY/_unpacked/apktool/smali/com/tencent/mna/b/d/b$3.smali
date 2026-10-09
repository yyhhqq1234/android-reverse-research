.class final Lcom/tencent/mna/b/d/b$3;
.super Ljava/lang/Object;
.source "DiagnoseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 143
    iput-object p1, p0, Lcom/tencent/mna/b/d/b$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mna/b/d/b$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 146
    new-instance v0, Lcom/tencent/mna/b/d/e;

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mna/b/d/b$3;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mna/b/d/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :try_start_0
    invoke-static {v0}, Lcom/tencent/mna/b/d/b;->a(Lcom/tencent/mna/b/d/c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiagnoseManager queryKartin4test, exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Lcom/tencent/mna/b/d/c;->d()Lcom/tencent/mna/KartinRet;

    move-result-object v1

    .line 152
    invoke-static {v0, v1}, Lcom/tencent/mna/b/d/b;->a(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/KartinRet;)V

    goto :goto_0
.end method
