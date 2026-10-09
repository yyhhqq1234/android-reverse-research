.class Lcom/subao/common/e/l$1;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/e/l;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/e/l;


# direct methods
.method constructor <init>(Lcom/subao/common/e/l;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/subao/common/e/l$1;->a:Lcom/subao/common/e/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 98
    const/4 v2, 0x0

    .line 100
    :try_start_0
    new-instance v1, Landroid/util/JsonWriter;

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/subao/common/e/l$1;->a:Lcom/subao/common/e/l;

    invoke-static {v4}, Lcom/subao/common/e/l;->a(Lcom/subao/common/e/l;)Lcom/subao/common/f/c;

    move-result-object v4

    invoke-interface {v4}, Lcom/subao/common/f/c;->c()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x400

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :try_start_1
    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 102
    const-string v0, "drsm"

    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/subao/common/e/l$1;->a:Lcom/subao/common/e/l;

    invoke-static {v2}, Lcom/subao/common/e/l;->b(Lcom/subao/common/e/l;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 103
    invoke-virtual {v1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 111
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 105
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    .line 107
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 106
    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 104
    :catch_3
    move-exception v0

    goto :goto_1
.end method
