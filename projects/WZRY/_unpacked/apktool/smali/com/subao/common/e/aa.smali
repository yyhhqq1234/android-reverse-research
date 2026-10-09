.class public Lcom/subao/common/e/aa;
.super Ljava/lang/Object;
.source "PersistentData.java"


# instance fields
.field private final a:Lcom/subao/common/f/c;


# direct methods
.method public constructor <init>(Lcom/subao/common/f/c;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/subao/common/e/aa;->a:Lcom/subao/common/f/c;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/subao/common/e/aa;->a:Lcom/subao/common/f/c;

    invoke-interface {v0, p1}, Lcom/subao/common/f/c;->a(Ljava/lang/String;)Lcom/subao/common/f/c;

    move-result-object v0

    .line 35
    if-nez p2, :cond_0

    .line 36
    invoke-interface {v0}, Lcom/subao/common/f/c;->d()Z

    .line 45
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-interface {v0}, Lcom/subao/common/f/c;->c()Ljava/io/OutputStream;

    move-result-object v0

    .line 41
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {v0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method public a(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/subao/common/e/aa;->a:Lcom/subao/common/f/c;

    invoke-interface {v0, p1}, Lcom/subao/common/f/c;->a(Ljava/lang/String;)Lcom/subao/common/f/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/subao/common/f/c;->e()[B

    move-result-object v0

    return-object v0
.end method
