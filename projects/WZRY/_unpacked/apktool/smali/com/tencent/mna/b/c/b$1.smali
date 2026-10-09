.class Lcom/tencent/mna/b/c/b$1;
.super Ljava/lang/Object;
.source "VivoLocalSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b/c/b;->a(Lcom/tencent/mna/b/c/a$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/b/c/b;


# direct methods
.method constructor <init>(Lcom/tencent/mna/b/c/b;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tencent/mna/b/c/b$1;->a:Lcom/tencent/mna/b/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/b/c/b$1;->a:Lcom/tencent/mna/b/c/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mna/b/c/b;->a(Lcom/tencent/mna/b/c/b;Z)Z

    .line 43
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mna/b/c/b$1;->a:Lcom/tencent/mna/b/c/b;

    invoke-static {v0}, Lcom/tencent/mna/b/c/b;->a(Lcom/tencent/mna/b/c/b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mna/b/c/b$1;->a:Lcom/tencent/mna/b/c/b;

    invoke-static {v0}, Lcom/tencent/mna/b/c/b;->b(Lcom/tencent/mna/b/c/b;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 45
    iget-object v1, p0, Lcom/tencent/mna/b/c/b$1;->a:Lcom/tencent/mna/b/c/b;

    invoke-static {v1}, Lcom/tencent/mna/b/c/b;->b(Lcom/tencent/mna/b/c/b;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 46
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/tencent/mna/b/c/b$1;->a:Lcom/tencent/mna/b/c/b;

    invoke-static {v0}, Lcom/tencent/mna/b/c/b;->c(Lcom/tencent/mna/b/c/b;)Lcom/tencent/mna/b/c/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/tencent/mna/b/c/b$1;->a:Lcom/tencent/mna/b/c/b;

    invoke-static {v0}, Lcom/tencent/mna/b/c/b;->c(Lcom/tencent/mna/b/c/b;)Lcom/tencent/mna/b/c/a$a;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/tencent/mna/b/c/a$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v0, "LocalSocket recv failed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V

    .line 54
    :cond_1
    return-void
.end method
