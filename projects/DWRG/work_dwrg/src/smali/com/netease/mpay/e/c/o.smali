.class public Lcom/netease/mpay/e/c/o;
.super Lcom/netease/mpay/e/c/a/f;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/e/c/a/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "mpay_patch.xml"

    iput-object v0, p0, Lcom/netease/mpay/e/c/o;->a:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    const-string v0, "removePathes"

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/e/c/o;->b:Landroid/content/Context;

    const-string v1, "mpay_patch.xml"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public a()Lcom/netease/mpay/e/b/aa;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/e/c/o;->b:Landroid/content/Context;

    const-string v2, "mpay_patch.xml"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {p0, v2}, Lcom/netease/mpay/e/c/o;->a([B)[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-static {v2}, Lcom/netease/mpay/e/b/aa;->a([B)Lcom/netease/mpay/e/b/aa;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lcom/netease/mpay/e/b/aa;->a()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SDK version has changed, remove the patch list!"

    invoke-static {v2}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/netease/mpay/e/c/o;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b/aa;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/aa;-><init>()V

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Lcom/netease/mpay/e/b/aa;)V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "savePatches"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/netease/mpay/e/b/aa;->b()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/o;->b([B)[B

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/e/c/o;->b:Landroid/content/Context;

    const-string v2, "mpay_patch.xml"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/e/b/z;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/o;->a()Lcom/netease/mpay/e/b/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/e/b/aa;->b(Lcom/netease/mpay/e/b/z;)V

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/o;->a(Lcom/netease/mpay/e/b/aa;)V

    return-void
.end method
