.class public Lcom/tencent/mna/b/c/b;
.super Ljava/lang/Object;
.source "VivoLocalSocket.java"

# interfaces
.implements Lcom/tencent/mna/b/c/a;


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private c:Landroid/net/LocalSocket;

.field private d:Lcom/tencent/mna/b/c/a$a;

.field private e:Ljava/io/InputStream;

.field private f:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcom/tencent/mna/b/c/b;->a:Z

    .line 16
    iput-boolean v0, p0, Lcom/tencent/mna/b/c/b;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/b/c/b;)Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/tencent/mna/b/c/b;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/mna/b/c/b;Z)Z
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/tencent/mna/b/c/b;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/mna/b/c/b;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/tencent/mna/b/c/b;->e:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mna/b/c/b;)Lcom/tencent/mna/b/c/a$a;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/tencent/mna/b/c/b;->d:Lcom/tencent/mna/b/c/a$a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/tencent/mna/b/c/b;->b:Z

    .line 88
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/mna/b/c/b;->a:Z

    .line 90
    iget-object v2, p0, Lcom/tencent/mna/b/c/b;->c:Landroid/net/LocalSocket;

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/tencent/mna/b/c/b;->c:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 92
    iget-object v2, p0, Lcom/tencent/mna/b/c/b;->c:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 93
    iget-object v2, p0, Lcom/tencent/mna/b/c/b;->c:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    .line 94
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/mna/b/c/b;->c:Landroid/net/LocalSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 97
    :catch_0
    move-exception v0

    move v0, v1

    .line 100
    goto :goto_0
.end method

.method public a(Lcom/tencent/mna/b/c/a$a;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 25
    iget-boolean v1, p0, Lcom/tencent/mna/b/c/b;->a:Z

    if-eqz v1, :cond_0

    .line 61
    :goto_0
    return v0

    .line 29
    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    iput-object v1, p0, Lcom/tencent/mna/b/c/b;->c:Landroid/net/LocalSocket;

    .line 30
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "netopt"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 32
    iget-object v2, p0, Lcom/tencent/mna/b/c/b;->c:Landroid/net/LocalSocket;

    invoke-virtual {v2, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 33
    iput-object p1, p0, Lcom/tencent/mna/b/c/b;->d:Lcom/tencent/mna/b/c/a$a;

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/mna/b/c/b;->a:Z

    .line 35
    iget-object v1, p0, Lcom/tencent/mna/b/c/b;->c:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mna/b/c/b;->e:Ljava/io/InputStream;

    .line 36
    iget-object v1, p0, Lcom/tencent/mna/b/c/b;->c:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mna/b/c/b;->f:Ljava/io/OutputStream;

    .line 38
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tencent/mna/b/c/b$1;

    invoke-direct {v2, p0}, Lcom/tencent/mna/b/c/b$1;-><init>(Lcom/tencent/mna/b/c/b;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 55
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 60
    const-string v0, "LocalSocket connect failed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 66
    iget-boolean v1, p0, Lcom/tencent/mna/b/c/b;->a:Z

    if-nez v1, :cond_0

    .line 81
    :goto_0
    return v0

    .line 70
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mna/b/c/b;->f:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 71
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 72
    array-length v2, v1

    .line 73
    iget-object v3, p0, Lcom/tencent/mna/b/c/b;->f:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 74
    iget-object v1, p0, Lcom/tencent/mna/b/c/b;->f:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 80
    const-string v1, "LocalSocket send failed"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
