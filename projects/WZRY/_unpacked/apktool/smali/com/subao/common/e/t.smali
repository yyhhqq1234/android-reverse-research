.class public Lcom/subao/common/e/t;
.super Lcom/subao/common/e/u;
.source "HRCouponListRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/e/t$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/subao/common/e/t$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/subao/common/e/u$a;Lcom/subao/common/e/u$d;Lcom/subao/common/e/t$a;Z)V
    .locals 2
    .param p1    # Lcom/subao/common/e/u$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/subao/common/e/u$d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/subao/common/e/t$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    sget-object v0, Lcom/subao/common/j/a$b;->a:Lcom/subao/common/j/a$b;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/subao/common/e/u;-><init>(Lcom/subao/common/e/u$a;Lcom/subao/common/e/u$d;Lcom/subao/common/j/a$b;[B)V

    .line 34
    iput-object p3, p0, Lcom/subao/common/e/t;->a:Lcom/subao/common/e/t$a;

    .line 35
    iput-boolean p4, p0, Lcom/subao/common/e/t;->d:Z

    .line 36
    return-void
.end method

.method private static a(Landroid/util/JsonReader;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 83
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-static {p0}, Lcom/subao/common/e/n;->a(Landroid/util/JsonReader;)Lcom/subao/common/e/n;

    move-result-object v1

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 88
    return-object v0
.end method

.method private static a([B)Ljava/util/List;
    .locals 7
    .param p0    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/n;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 40
    .line 44
    :try_start_0
    new-instance v3, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "UTF-8"

    invoke-direct {v0, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :try_start_1
    invoke-virtual {v3}, Landroid/util/JsonReader;->beginObject()V

    move v0, v5

    move-object v1, v2

    .line 46
    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 47
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    move v4, v5

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 65
    invoke-virtual {v3}, Landroid/util/JsonReader;->skipValue()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    move-object v1, v3

    :goto_2
    move-object v3, v1

    .line 72
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 76
    :goto_4
    return-object v1

    .line 47
    :sswitch_0
    :try_start_3
    const-string v6, "resultCode"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v6, "couponList"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    .line 49
    :pswitch_0
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextInt()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    if-eqz v1, :cond_0

    .line 74
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :cond_2
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    move-object v1, v2

    goto :goto_4

    .line 59
    :pswitch_1
    :try_start_4
    invoke-static {v3}, Lcom/subao/common/e/t;->a(Landroid/util/JsonReader;)Ljava/util/List;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    .line 60
    if-nez v0, :cond_0

    .line 74
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_4

    .line 69
    :cond_3
    :try_start_5
    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 74
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_5
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 70
    :catch_1
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 47
    :sswitch_data_0
    .sparse-switch
        -0x221d6c56 -> :sswitch_0
        0x245279e4 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lcom/subao/common/e/u$b;)V
    .locals 5
    .param p1    # Lcom/subao/common/e/u$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v0, 0x3f0

    .line 108
    invoke-super {p0, p1}, Lcom/subao/common/e/u;->a(Lcom/subao/common/e/u$b;)V

    .line 110
    const/4 v1, 0x0

    .line 112
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/subao/common/e/u$b;->b:Lcom/subao/common/j/a$c;

    if-nez v2, :cond_2

    .line 113
    :cond_0
    const/16 v0, 0x3ee

    .line 128
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/subao/common/e/t;->a:Lcom/subao/common/e/t$a;

    invoke-interface {v2, v0, v1}, Lcom/subao/common/e/t$a;->a(ILjava/util/List;)V

    .line 129
    return-void

    .line 116
    :cond_2
    const/16 v2, 0xc8

    iget-object v3, p1, Lcom/subao/common/e/u$b;->b:Lcom/subao/common/j/a$c;

    iget v3, v3, Lcom/subao/common/j/a$c;->a:I

    if-ne v2, v3, :cond_1

    .line 117
    iget-object v2, p1, Lcom/subao/common/e/u$b;->b:Lcom/subao/common/j/a$c;

    iget-object v2, v2, Lcom/subao/common/j/a$c;->b:[B

    .line 118
    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 122
    invoke-static {v2}, Lcom/subao/common/e/t;->a([B)Ljava/util/List;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 99
    const-string v1, "/api/v2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subao/common/e/t;->b:Lcom/subao/common/e/u$a;

    iget-object v2, v2, Lcom/subao/common/e/u$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/coupons"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-boolean v1, p0, Lcom/subao/common/e/t;->d:Z

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "?user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subao/common/e/t;->c:Lcom/subao/common/e/u$d;

    iget-object v2, v2, Lcom/subao/common/e/u$d;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
