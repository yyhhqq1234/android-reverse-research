.class Lcom/subao/common/f/d$a;
.super Ljava/lang/Object;
.source "PersistentFactory.java"

# interfaces
.implements Lcom/subao/common/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/io/File;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/subao/common/f/d$a;->a:Ljava/io/File;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/subao/common/f/c;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/subao/common/f/d$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subao/common/f/d$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/subao/common/f/d$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 83
    :cond_1
    new-instance v0, Lcom/subao/common/f/d$a;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/subao/common/f/d$a;->a:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/subao/common/f/d$a;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/subao/common/f/d$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public a(I)[B
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Lcom/subao/common/f/d$a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    .line 97
    if-lez p1, :cond_0

    if-le v2, p1, :cond_0

    .line 111
    :goto_0
    return-object v0

    .line 101
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/subao/common/f/d$a;->a:Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 103
    :try_start_0
    new-array v1, v2, [B

    .line 104
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 105
    if-eq v4, v2, :cond_1

    .line 109
    :goto_1
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public b()Ljava/io/InputStream;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/subao/common/f/d$a;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public c()Ljava/io/OutputStream;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/subao/common/f/d$a;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/subao/common/f/d$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public e()[B
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/subao/common/f/d$a;->a(I)[B

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/subao/common/f/d$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
