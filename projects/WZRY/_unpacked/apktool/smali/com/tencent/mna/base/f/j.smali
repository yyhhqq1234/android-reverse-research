.class public final Lcom/tencent/mna/base/f/j;
.super Ljava/lang/Object;
.source "NetErrHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/f/j$c;,
        Lcom/tencent/mna/base/f/j$a;,
        Lcom/tencent/mna/base/f/j$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/tencent/mna/base/f/j$b;

.field private static final b:Lcom/tencent/mna/base/f/j$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/tencent/mna/base/f/j$b;

    invoke-direct {v0}, Lcom/tencent/mna/base/f/j$b;-><init>()V

    sput-object v0, Lcom/tencent/mna/base/f/j;->a:Lcom/tencent/mna/base/f/j$b;

    .line 13
    new-instance v0, Lcom/tencent/mna/base/f/j$b;

    invoke-direct {v0}, Lcom/tencent/mna/base/f/j$b;-><init>()V

    sput-object v0, Lcom/tencent/mna/base/f/j;->b:Lcom/tencent/mna/base/f/j$b;

    return-void
.end method

.method public static a()Lcom/tencent/mna/base/f/j$b;
    .locals 2

    .prologue
    .line 17
    :try_start_0
    new-instance v0, Lcom/tencent/mna/base/f/j$b;

    invoke-direct {v0}, Lcom/tencent/mna/base/f/j$b;-><init>()V

    .line 18
    invoke-static {}, Lcom/tencent/mna/base/f/j;->b()Lcom/tencent/mna/base/f/j$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mna/base/f/j$b;->a(Lcom/tencent/mna/base/f/j$a;)V

    .line 19
    invoke-static {}, Lcom/tencent/mna/base/f/j;->c()Lcom/tencent/mna/base/f/j$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mna/base/f/j$b;->a(Lcom/tencent/mna/base/f/j$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/tencent/mna/base/f/j$b;Lcom/tencent/mna/base/f/j$b;)Lcom/tencent/mna/base/f/j$b;
    .locals 6

    .prologue
    .line 142
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 143
    :try_start_0
    new-instance v0, Lcom/tencent/mna/base/f/j$b;

    invoke-direct {v0}, Lcom/tencent/mna/base/f/j$b;-><init>()V

    .line 150
    invoke-virtual {p0}, Lcom/tencent/mna/base/f/j$b;->a()Lcom/tencent/mna/base/f/j$a;

    move-result-object v1

    .line 151
    invoke-virtual {p0}, Lcom/tencent/mna/base/f/j$b;->b()Lcom/tencent/mna/base/f/j$c;

    move-result-object v2

    .line 153
    invoke-virtual {p1}, Lcom/tencent/mna/base/f/j$b;->a()Lcom/tencent/mna/base/f/j$a;

    move-result-object v3

    .line 154
    invoke-virtual {p1}, Lcom/tencent/mna/base/f/j$b;->b()Lcom/tencent/mna/base/f/j$c;

    move-result-object v4

    .line 157
    new-instance v5, Lcom/tencent/mna/base/f/j$a;

    invoke-direct {v5, v3, v1}, Lcom/tencent/mna/base/f/j$a;-><init>(Lcom/tencent/mna/base/f/j$a;Lcom/tencent/mna/base/f/j$a;)V

    .line 158
    new-instance v1, Lcom/tencent/mna/base/f/j$c;

    invoke-direct {v1, v4, v2}, Lcom/tencent/mna/base/f/j$c;-><init>(Lcom/tencent/mna/base/f/j$c;Lcom/tencent/mna/base/f/j$c;)V

    .line 162
    invoke-virtual {v0, v5}, Lcom/tencent/mna/base/f/j$b;->a(Lcom/tencent/mna/base/f/j$a;)V

    .line 163
    invoke-virtual {v0, v1}, Lcom/tencent/mna/base/f/j$b;->a(Lcom/tencent/mna/base/f/j$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/tencent/mna/base/f/j$b;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 27
    const-string v0, "0:0:0:0_0:0:0:0_0:0"

    .line 28
    if-nez p0, :cond_0

    .line 50
    :goto_0
    return-object v0

    .line 32
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/mna/base/f/j$b;->a()Lcom/tencent/mna/base/f/j$a;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Lcom/tencent/mna/base/f/j$b;->b()Lcom/tencent/mna/base/f/j$c;

    move-result-object v2

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v1, Lcom/tencent/mna/base/f/j$a;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/tencent/mna/base/f/j$a;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/tencent/mna/base/f/j$a;->i:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/tencent/mna/base/f/j$a;->j:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->d:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/tencent/mna/base/f/j$a;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/tencent/mna/base/f/j$a;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 47
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public static b()Lcom/tencent/mna/base/f/j$a;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 175
    new-instance v7, Lcom/tencent/mna/base/f/j$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v7, v2, v3}, Lcom/tencent/mna/base/f/j$a;-><init>(J)V

    .line 176
    const/4 v2, 0x0

    .line 178
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    const-string v6, "/proc/net/dev"

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "UTF-8"

    invoke-direct {v0, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v4, 0x400

    invoke-direct {v3, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move v4, v5

    move v2, v5

    move v0, v5

    .line 187
    :goto_0
    if-eqz v6, :cond_5

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-nez v4, :cond_5

    .line 188
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 190
    const-string v6, "rmnet0:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "rmnet_ipa0:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 191
    :cond_1
    const-string v6, "\\s+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 192
    array-length v6, v5

    const/16 v8, 0x11

    if-lt v6, v8, :cond_2

    .line 194
    const/4 v0, 0x1

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->k:J

    .line 195
    const/4 v0, 0x2

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->l:J

    .line 196
    const/4 v0, 0x3

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->m:J

    .line 197
    const/4 v0, 0x4

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->n:J

    .line 199
    const/16 v0, 0x9

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->o:J

    .line 200
    const/16 v0, 0xa

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->p:J

    .line 201
    const/16 v0, 0xb

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->q:J

    .line 202
    const/16 v0, 0xc

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->r:J

    move v0, v1

    .line 237
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    goto :goto_0

    .line 205
    :cond_3
    const-string/jumbo v6, "wlan0:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 206
    const-string v6, "\\s+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 207
    array-length v6, v5

    const/16 v8, 0x11

    if-lt v6, v8, :cond_2

    .line 209
    const/4 v2, 0x1

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->c:J

    .line 210
    const/4 v2, 0x2

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->d:J

    .line 211
    const/4 v2, 0x3

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->e:J

    .line 212
    const/4 v2, 0x4

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->f:J

    .line 214
    const/16 v2, 0x9

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->g:J

    .line 215
    const/16 v2, 0xa

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->h:J

    .line 216
    const/16 v2, 0xb

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->i:J

    .line 217
    const/16 v2, 0xc

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->j:J

    move v2, v1

    .line 218
    goto :goto_1

    .line 220
    :cond_4
    const-string v6, "eth0:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 221
    const-string v6, "\\s+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 222
    array-length v6, v5

    const/16 v8, 0x11

    if-lt v6, v8, :cond_2

    .line 224
    const/4 v4, 0x1

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->s:J

    .line 225
    const/4 v4, 0x2

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->t:J

    .line 226
    const/4 v4, 0x3

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->u:J

    .line 227
    const/4 v4, 0x4

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->v:J

    .line 229
    const/16 v4, 0x9

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->w:J

    .line 230
    const/16 v4, 0xa

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->x:J

    .line 231
    const/16 v4, 0xb

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/mna/base/f/j$a;->y:J

    .line 232
    const/16 v4, 0xc

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v7, Lcom/tencent/mna/base/f/j$a;->z:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v4, v1

    .line 233
    goto/16 :goto_1

    .line 243
    :cond_5
    if-eqz v3, :cond_6

    .line 244
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 250
    :cond_6
    :goto_2
    return-object v7

    .line 239
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 240
    :goto_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDevNetStat exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 243
    if-eqz v1, :cond_6

    .line 244
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 246
    :catch_1
    move-exception v0

    goto :goto_2

    .line 242
    :catchall_0
    move-exception v0

    move-object v3, v2

    .line 243
    :goto_4
    if-eqz v3, :cond_7

    .line 244
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 248
    :cond_7
    :goto_5
    throw v0

    .line 246
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_5

    .line 242
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_4

    .line 239
    :catch_4
    move-exception v0

    move-object v1, v3

    goto :goto_3
.end method

.method public static b(Lcom/tencent/mna/base/f/j$b;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 55
    const-string v0, "0:0:0:0_0:0:0:0_0:0_0:0:0:0_0:0"

    .line 56
    if-nez p0, :cond_0

    .line 86
    :goto_0
    return-object v0

    .line 60
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/mna/base/f/j$b;->a()Lcom/tencent/mna/base/f/j$a;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lcom/tencent/mna/base/f/j$b;->b()Lcom/tencent/mna/base/f/j$c;

    move-result-object v2

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v1, Lcom/tencent/mna/base/f/j$a;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/tencent/mna/base/f/j$a;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/tencent/mna/base/f/j$a;->i:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/tencent/mna/base/f/j$a;->j:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->d:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/tencent/mna/base/f/j$a;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/tencent/mna/base/f/j$a;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/tencent/mna/base/f/j$a;->m:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/tencent/mna/base/f/j$a;->n:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/tencent/mna/base/f/j$a;->q:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/tencent/mna/base/f/j$a;->r:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/tencent/mna/base/f/j$a;->c:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/tencent/mna/base/f/j$a;->g:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 83
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public static c()Lcom/tencent/mna/base/f/j$c;
    .locals 6

    .prologue
    .line 255
    new-instance v2, Lcom/tencent/mna/base/f/j$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/tencent/mna/base/f/j$c;-><init>(J)V

    .line 256
    const/4 v1, 0x0

    .line 258
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/proc/net/snmp"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v4, 0x400

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 260
    :goto_0
    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 262
    const-string v3, "Udp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "InDatagrams"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 263
    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 264
    array-length v3, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x7

    if-ge v3, v4, :cond_2

    .line 286
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 287
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 293
    :cond_1
    :goto_2
    return-object v2

    .line 267
    :cond_2
    const/4 v3, 0x1

    :try_start_3
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->g:J

    .line 268
    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->c:J

    .line 269
    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->d:J

    .line 270
    const/4 v3, 0x4

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->h:J

    .line 271
    const/4 v3, 0x5

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->e:J

    .line 272
    const/4 v3, 0x6

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->f:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 279
    :catch_0
    move-exception v1

    .line 280
    :goto_3
    const-wide/16 v4, -0x2

    :try_start_4
    iput-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->c:J

    .line 281
    const-wide/16 v4, -0x2

    iput-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->d:J

    .line 282
    const-wide/16 v4, -0x2

    iput-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->e:J

    .line 283
    const-wide/16 v4, -0x2

    iput-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->f:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 286
    if-eqz v0, :cond_1

    .line 287
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 289
    :catch_1
    move-exception v0

    goto :goto_2

    .line 277
    :cond_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v1

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    .line 286
    :goto_4
    if-eqz v3, :cond_4

    .line 287
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 291
    :cond_4
    :goto_5
    throw v2

    .line 289
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_5

    .line 285
    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_4

    .line 279
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_3
.end method
