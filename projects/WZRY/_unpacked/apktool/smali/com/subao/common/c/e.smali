.class public Lcom/subao/common/c/e;
.super Lcom/subao/common/c/g;
.source "ProductListRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/c/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/subao/common/c/e$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/subao/common/e/al;Lcom/subao/common/c/e$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/subao/common/e/al;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/subao/common/c/e$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/subao/common/c/g;-><init>(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;)V

    .line 32
    iput-object p3, p0, Lcom/subao/common/c/e;->a:Lcom/subao/common/c/e$a;

    .line 33
    return-void
.end method


# virtual methods
.method protected a()Lcom/subao/common/j/a$b;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lcom/subao/common/j/a$b;->a:Lcom/subao/common/j/a$b;

    return-object v0
.end method

.method protected a(Lcom/subao/common/j/a$c;)V
    .locals 6
    .param p1    # Lcom/subao/common/j/a$c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0x1f4

    const/4 v4, 0x0

    .line 54
    if-nez p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/subao/common/c/e;->a:Lcom/subao/common/c/e$a;

    const/4 v1, -0x1

    invoke-interface {v0, v1, v4}, Lcom/subao/common/c/e$a;->a(ILcom/subao/common/intf/ProductList;)V

    .line 79
    :goto_0
    return-void

    .line 58
    :cond_0
    iget v0, p1, Lcom/subao/common/j/a$c;->a:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/subao/common/c/e;->a:Lcom/subao/common/c/e$a;

    iget v1, p1, Lcom/subao/common/j/a$c;->a:I

    invoke-interface {v0, v1, v4}, Lcom/subao/common/c/e$a;->a(ILcom/subao/common/intf/ProductList;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p1, Lcom/subao/common/j/a$c;->b:[B

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/subao/common/j/a$c;->b:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/subao/common/c/e;->a:Lcom/subao/common/c/e$a;

    invoke-interface {v0, v5, v4}, Lcom/subao/common/c/e$a;->a(ILcom/subao/common/intf/ProductList;)V

    goto :goto_0

    .line 66
    :cond_3
    new-instance v1, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p1, Lcom/subao/common/j/a$c;->b:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 68
    :try_start_0
    invoke-static {v1}, Lcom/subao/common/intf/ProductList;->createFromJson(Landroid/util/JsonReader;)Lcom/subao/common/intf/ProductList;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    iget-object v2, p0, Lcom/subao/common/c/e;->a:Lcom/subao/common/c/e$a;

    iget v3, p1, Lcom/subao/common/j/a$c;->a:I

    invoke-interface {v2, v3, v0}, Lcom/subao/common/c/e$a;->a(ILcom/subao/common/intf/ProductList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 78
    :goto_1
    iget-object v0, p0, Lcom/subao/common/c/e;->a:Lcom/subao/common/c/e$a;

    invoke-interface {v0, v5, v4}, Lcom/subao/common/c/e$a;->a(ILcom/subao/common/intf/ProductList;)V

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    .line 73
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected a_()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method protected c()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/api/v1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/subao/common/c/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/products"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
