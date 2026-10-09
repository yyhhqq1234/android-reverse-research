.class Lcom/tencent/kgvmp/d/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/kgvmp/d/m;


# direct methods
.method constructor <init>(Lcom/tencent/kgvmp/d/m;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/d/m;->a(Lcom/tencent/kgvmp/d/m;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    :try_start_0
    iget-object v0, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    invoke-static {v0}, Lcom/tencent/kgvmp/d/m;->b(Lcom/tencent/kgvmp/d/m;)Landroid/net/LocalSocket;

    move-result-object v0

    new-instance v1, Landroid/net/LocalSocketAddress;

    iget-object v2, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    invoke-static {v2}, Lcom/tencent/kgvmp/d/m;->a(Lcom/tencent/kgvmp/d/m;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    iget-object v1, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    invoke-static {v1}, Lcom/tencent/kgvmp/d/m;->b(Lcom/tencent/kgvmp/d/m;)Landroid/net/LocalSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/d/m;->a(Lcom/tencent/kgvmp/d/m;Z)Z

    iget-object v0, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    invoke-static {v0}, Lcom/tencent/kgvmp/d/m;->c(Lcom/tencent/kgvmp/d/m;)Z

    move-result v0

    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->n(Z)V

    iget-object v0, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    invoke-static {v0}, Lcom/tencent/kgvmp/d/m;->c(Lcom/tencent/kgvmp/d/m;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    invoke-static {v0}, Lcom/tencent/kgvmp/d/m;->d(Lcom/tencent/kgvmp/d/m;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/d/j;->KOG_SOCKET:Lcom/tencent/kgvmp/d/j;

    sput-object v0, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    :goto_0
    invoke-static {}, Lcom/tencent/kgvmp/d/m;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VmpSocketClient:Connect Socket: connect success. sdk_type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/d/j;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    invoke-static {v0}, Lcom/tencent/kgvmp/d/m;->b(Lcom/tencent/kgvmp/d/m;)Landroid/net/LocalSocket;

    move-result-object v0

    const v1, 0x7a120

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->setReceiveBufferSize(I)V

    iget-object v0, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    invoke-static {v0}, Lcom/tencent/kgvmp/d/m;->b(Lcom/tencent/kgvmp/d/m;)Landroid/net/LocalSocket;

    move-result-object v0

    const v1, 0x7a120

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->setSendBufferSize(I)V

    iget-object v0, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    iget-object v1, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    invoke-static {v1}, Lcom/tencent/kgvmp/d/m;->b(Lcom/tencent/kgvmp/d/m;)Landroid/net/LocalSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/d/m;->a(Lcom/tencent/kgvmp/d/m;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    iget-object v1, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    invoke-static {v1}, Lcom/tencent/kgvmp/d/m;->b(Lcom/tencent/kgvmp/d/m;)Landroid/net/LocalSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/d/m;->a(Lcom/tencent/kgvmp/d/m;Ljava/io/InputStream;)Ljava/io/InputStream;

    iget-object v0, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    new-instance v1, Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    invoke-static {v2}, Lcom/tencent/kgvmp/d/m;->e(Lcom/tencent/kgvmp/d/m;)Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/d/m;->a(Lcom/tencent/kgvmp/d/m;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;

    const-string v0, ""

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_1
    iget-object v1, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    invoke-static {v1}, Lcom/tencent/kgvmp/d/m;->f(Lcom/tencent/kgvmp/d/m;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {}, Lcom/tencent/kgvmp/d/m;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VmpSocketClient:receive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/d/m;->a(Lcom/tencent/kgvmp/d/m;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    invoke-static {v0, v5}, Lcom/tencent/kgvmp/d/m;->a(Lcom/tencent/kgvmp/d/m;Z)Z

    iget-object v0, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    invoke-static {v0}, Lcom/tencent/kgvmp/d/m;->c(Lcom/tencent/kgvmp/d/m;)Z

    move-result v0

    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->n(Z)V

    invoke-static {}, Lcom/tencent/kgvmp/d/m;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VmpSocketClient:ConnectService: exception, socket type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    invoke-static {v2}, Lcom/tencent/kgvmp/d/m;->a(Lcom/tencent/kgvmp/d/m;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/kgvmp/d/n;->a:Lcom/tencent/kgvmp/d/m;

    invoke-static {v0}, Lcom/tencent/kgvmp/d/m;->d(Lcom/tencent/kgvmp/d/m;)I

    move-result v0

    if-ne v0, v3, :cond_2

    sget-object v0, Lcom/tencent/kgvmp/d/j;->SOCKET:Lcom/tencent/kgvmp/d/j;

    sput-object v0, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/kgvmp/d/j;->VIVO2:Lcom/tencent/kgvmp/d/j;

    sput-object v0, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/tencent/kgvmp/d/m;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VmpSocketClient:Connect Socket: connect failed."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
