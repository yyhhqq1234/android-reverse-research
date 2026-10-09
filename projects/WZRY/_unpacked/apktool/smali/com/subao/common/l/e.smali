.class Lcom/subao/common/l/e;
.super Ljava/lang/Object;
.source "QosModifyRequest.java"

# interfaces
.implements Lcom/subao/common/c;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/subao/common/l/e;->a:I

    .line 19
    iput-object p2, p0, Lcom/subao/common/l/e;->b:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public serialize(Landroid/util/JsonWriter;)V
    .locals 4

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 25
    const-string/jumbo v0, "timeLength"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/l/e;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 26
    const-string v0, "securityToken"

    iget-object v1, p0, Lcom/subao/common/l/e;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 27
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 32
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 33
    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 35
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/subao/common/l/e;->serialize(Landroid/util/JsonWriter;)V

    .line 36
    invoke-virtual {v1}, Landroid/util/JsonWriter;->flush()V

    .line 37
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 41
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    :try_start_1
    sget-object v0, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "[time=%d, token=%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/subao/common/l/e;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/subao/common/l/e;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 41
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method
