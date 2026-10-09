.class public Lcom/subao/common/e/ak;
.super Ljava/lang/Object;
.source "ServiceConfig.java"


# instance fields
.field a:Z

.field b:Ljava/lang/Integer;

.field c:Lcom/subao/common/e/e$a;

.field d:Ljava/lang/String;

.field e:Lcom/subao/common/e/al;

.field f:Lcom/subao/common/e/al;

.field g:Lcom/subao/common/e/al;

.field h:Lcom/subao/common/e/al;

.field i:Ljava/lang/String;

.field j:Ljava/lang/Integer;

.field k:Ljava/lang/Integer;

.field l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 2

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x1

    .line 60
    if-ge p0, v0, :cond_1

    move p0, v0

    .line 65
    :cond_0
    :goto_0
    return p0

    .line 62
    :cond_1
    if-le p0, v1, :cond_0

    move p0, v1

    .line 63
    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/subao/common/e/e$a;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Lcom/subao/common/e/e$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/subao/common/e/e$a;-><init>(ILjava/lang/String;)V

    .line 203
    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    move v2, v1

    .line 196
    :goto_1
    const/16 v1, 0x2c

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 197
    if-gez v0, :cond_1

    .line 203
    new-instance v0, Lcom/subao/common/e/e$a;

    invoke-direct {v0, v2, p1}, Lcom/subao/common/e/e$a;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .line 201
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .line 202
    goto :goto_1
.end method

.method static a()Ljava/io/File;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;Lcom/subao/common/e/q$a;)Ljava/io/File;
    .locals 2

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 87
    invoke-static {}, Lcom/subao/common/e/ak;->a()Ljava/io/File;

    move-result-object p0

    .line 90
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 91
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/subao/common/e/ak;->b(Lcom/subao/common/e/q$a;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/subao/common/e/q$a;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/subao/common/e/ak$1;->a:[I

    invoke-virtual {p0}, Lcom/subao/common/e/q$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 112
    const-string v0, "app"

    :goto_0
    return-object v0

    .line 108
    :pswitch_0
    const-string v0, "rom"

    goto :goto_0

    .line 110
    :pswitch_1
    const-string v0, "sdk"

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Lcom/subao/common/e/q$a;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    invoke-static {p0}, Lcom/subao/common/e/ak;->a(Lcom/subao/common/e/q$a;)Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.subao.gamemaster.service.config."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/io/File;Lcom/subao/common/e/q$a;)Ljava/io/File;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 117
    if-nez p0, :cond_0

    .line 118
    invoke-static {}, Lcom/subao/common/e/ak;->a()Ljava/io/File;

    move-result-object p0

    .line 120
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move-object v0, v1

    .line 127
    :cond_2
    :goto_0
    return-object v0

    .line 123
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/subao/common/e/ak;->b(Lcom/subao/common/e/q$a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    move-object v0, v1

    .line 125
    goto :goto_0
.end method


# virtual methods
.method a(Ljava/io/Reader;)V
    .locals 3

    .prologue
    .line 151
    new-instance v1, Landroid/util/JsonReader;

    invoke-direct {v1, p1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 153
    :try_start_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 154
    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 155
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v2, "init"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const-string v0, "fail"

    invoke-static {v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/subao/common/e/ak;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    .line 158
    :cond_0
    :try_start_1
    const-string/jumbo v2, "url_h5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    invoke-static {v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/e/ak;->d:Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_1
    const-string v2, "accel_recommend"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/e/ak;->j:Ljava/lang/Integer;

    goto :goto_0

    .line 162
    :cond_2
    const-string v2, "nodes_info"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    invoke-static {v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subao/common/e/ak;->a(Ljava/lang/String;)Lcom/subao/common/e/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/e/ak;->c:Lcom/subao/common/e/e$a;

    goto :goto_0

    .line 164
    :cond_3
    const-string v2, "log_level"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 165
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    invoke-static {v0}, Lcom/subao/common/e/ak;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/e/ak;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 166
    :cond_4
    const-string/jumbo v2, "url_portal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 167
    invoke-static {v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/common/e/al;->a(Ljava/lang/String;)Lcom/subao/common/e/al;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/e/ak;->e:Lcom/subao/common/e/al;

    goto/16 :goto_0

    .line 168
    :cond_5
    const-string/jumbo v2, "url_auth"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 169
    invoke-static {v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/common/e/al;->a(Ljava/lang/String;)Lcom/subao/common/e/al;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/e/ak;->f:Lcom/subao/common/e/al;

    goto/16 :goto_0

    .line 170
    :cond_6
    const-string/jumbo v2, "url_hr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 171
    invoke-static {v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/common/e/al;->a(Ljava/lang/String;)Lcom/subao/common/e/al;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/e/ak;->h:Lcom/subao/common/e/al;

    goto/16 :goto_0

    .line 172
    :cond_7
    const-string/jumbo v2, "url_ticket"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 173
    invoke-static {v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/e/ak;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 174
    :cond_8
    const-string/jumbo v2, "url_message"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 175
    invoke-static {v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/common/e/al;->a(Ljava/lang/String;)Lcom/subao/common/e/al;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/e/ak;->g:Lcom/subao/common/e/al;

    goto/16 :goto_0

    .line 176
    :cond_9
    const-string v2, "data_refresh_interval"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 177
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/e/ak;->k:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 178
    :cond_a
    const-string/jumbo v2, "url_bonus"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 179
    invoke-static {v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/e/ak;->l:Ljava/lang/String;

    goto/16 :goto_0

    .line 181
    :cond_b
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 184
    :cond_c
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 188
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/subao/common/e/ak;->a:Z

    return v0
.end method

.method public b(Ljava/io/File;Lcom/subao/common/e/q$a;)Z
    .locals 3

    .prologue
    .line 140
    :try_start_0
    invoke-static {p1, p2}, Lcom/subao/common/e/ak;->c(Ljava/io/File;Lcom/subao/common/e/q$a;)Ljava/io/File;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v0, 0x800

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {p0, v1}, Lcom/subao/common/e/ak;->a(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    .line 145
    :catch_0
    move-exception v0

    .line 147
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public c()Lcom/subao/common/e/al;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/subao/common/e/ak;->e:Lcom/subao/common/e/al;

    return-object v0
.end method

.method public d()Lcom/subao/common/e/e$a;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/subao/common/e/ak;->c:Lcom/subao/common/e/e$a;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/subao/common/e/ak;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/subao/common/e/ak;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method public g()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/subao/common/e/ak;->k:Ljava/lang/Integer;

    return-object v0
.end method

.method public h()Lcom/subao/common/e/al;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/subao/common/e/ak;->h:Lcom/subao/common/e/al;

    return-object v0
.end method

.method public i()Lcom/subao/common/e/al;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/subao/common/e/ak;->f:Lcom/subao/common/e/al;

    return-object v0
.end method

.method public j()Lcom/subao/common/e/al;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/subao/common/e/ak;->g:Lcom/subao/common/e/al;

    return-object v0
.end method
