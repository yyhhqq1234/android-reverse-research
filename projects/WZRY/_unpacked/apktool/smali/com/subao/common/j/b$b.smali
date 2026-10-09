.class Lcom/subao/common/j/b$b;
.super Ljava/lang/Object;
.source "HttpBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/j/b;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/subao/common/j/b;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0
    .param p5    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    iput-object p1, p0, Lcom/subao/common/j/b$b;->a:Lcom/subao/common/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p2, p0, Lcom/subao/common/j/b$b;->b:I

    .line 78
    iput-object p3, p0, Lcom/subao/common/j/b$b;->c:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/subao/common/j/b$b;->d:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lcom/subao/common/j/b$b;->e:[B

    .line 81
    iput-object p6, p0, Lcom/subao/common/j/b$b;->f:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private a(Lcom/subao/common/j/a$b;)Lcom/subao/common/j/a$c;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Lcom/subao/common/j/a;

    iget v1, p0, Lcom/subao/common/j/b$b;->b:I

    iget v2, p0, Lcom/subao/common/j/b$b;->b:I

    invoke-direct {v0, v1, v2}, Lcom/subao/common/j/a;-><init>(II)V

    iget-object v1, p0, Lcom/subao/common/j/b$b;->c:Ljava/lang/String;

    .line 105
    invoke-static {v1}, Lcom/subao/common/j/a;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    const/4 v2, 0x0

    .line 104
    invoke-virtual {v0, v1, p1, v2}, Lcom/subao/common/j/a;->a(Ljava/net/URL;Lcom/subao/common/j/a$b;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/subao/common/j/b$b;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/subao/common/j/b$b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 107
    sget-object v1, Lcom/subao/common/j/b$1;->a:[I

    invoke-virtual {p1}, Lcom/subao/common/j/a$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 112
    iget-object v1, p0, Lcom/subao/common/j/b$b;->e:[B

    invoke-static {v0, v1}, Lcom/subao/common/j/a;->a(Ljava/net/HttpURLConnection;[B)Lcom/subao/common/j/a$c;

    move-result-object v0

    :goto_0
    return-object v0

    .line 110
    :pswitch_0
    invoke-static {v0}, Lcom/subao/common/j/a;->b(Ljava/net/HttpURLConnection;)Lcom/subao/common/j/a$c;

    move-result-object v0

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 117
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v1, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 122
    :try_start_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 123
    :goto_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {p1, v0, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 130
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    .line 128
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, Lcom/subao/common/j/b$b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/subao/common/j/b$b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/subao/common/j/b$b;->a:Lcom/subao/common/j/b;

    invoke-static {v0, v1, v3}, Lcom/subao/common/j/b;->a(Lcom/subao/common/j/b;I[B)V

    .line 101
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/subao/common/j/b$b;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/subao/common/j/b$a;->a(Ljava/lang/String;)Lcom/subao/common/j/a$b;

    move-result-object v0

    .line 91
    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/subao/common/j/b$b;->a:Lcom/subao/common/j/b;

    invoke-static {v0, v1, v3}, Lcom/subao/common/j/b;->a(Lcom/subao/common/j/b;I[B)V

    goto :goto_0

    .line 96
    :cond_2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/subao/common/j/b$b;->a(Lcom/subao/common/j/a$b;)Lcom/subao/common/j/a$c;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/subao/common/j/b$b;->a:Lcom/subao/common/j/b;

    iget v2, v0, Lcom/subao/common/j/a$c;->a:I

    iget-object v0, v0, Lcom/subao/common/j/a$c;->b:[B

    invoke-static {v1, v2, v0}, Lcom/subao/common/j/b;->a(Lcom/subao/common/j/b;I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    iget-object v0, p0, Lcom/subao/common/j/b$b;->a:Lcom/subao/common/j/b;

    const/4 v1, -0x1

    invoke-static {v0, v1, v3}, Lcom/subao/common/j/b;->a(Lcom/subao/common/j/b;I[B)V

    goto :goto_0
.end method
