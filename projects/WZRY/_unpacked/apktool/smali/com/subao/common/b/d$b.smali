.class Lcom/subao/common/b/d$b;
.super Lcom/subao/common/e/o;
.source "AuthResultReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static volatile d:Z


# instance fields
.field private final e:Lcom/subao/common/g/c;


# direct methods
.method private constructor <init>(Lcom/subao/common/e/u$a;Lcom/subao/common/g/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/subao/common/e/u$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 195
    new-instance v0, Lcom/subao/common/e/u$d;

    invoke-direct {v0, p4, p3}, Lcom/subao/common/e/u$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/subao/common/e/o$b;

    .line 197
    invoke-static {}, Lcom/subao/common/i/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/subao/common/e/am;->b()Lcom/subao/common/e/am;

    move-result-object v3

    invoke-virtual {v3}, Lcom/subao/common/e/am;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/subao/common/e/o$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, p1, v0, v1}, Lcom/subao/common/e/o;-><init>(Lcom/subao/common/e/u$a;Lcom/subao/common/e/u$d;Lcom/subao/common/e/o$b;)V

    .line 199
    iput-object p2, p0, Lcom/subao/common/b/d$b;->e:Lcom/subao/common/g/c;

    .line 200
    return-void
.end method

.method static a(Lcom/subao/common/e/o$a;Lcom/subao/common/g/c;)V
    .locals 5

    .prologue
    .line 218
    const-string v0, "SubaoData"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    .line 219
    if-nez p0, :cond_1

    .line 220
    if-eqz v1, :cond_0

    .line 221
    const-string v0, "SubaoData"

    const-string v1, "Download customer script failed, IO or runtime exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/subao/common/e/o$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/subao/common/e/o$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_3

    .line 226
    :cond_2
    if-eqz v1, :cond_0

    .line 227
    const-string v0, "SubaoData"

    const-string v1, "Invalid digest in download customer script"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/subao/common/e/o$a;->b:Lcom/subao/common/j/a$c;

    if-nez v0, :cond_4

    .line 232
    if-eqz v1, :cond_0

    .line 233
    const-string v0, "SubaoData"

    const-string v1, "Invalid response in download customer script"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_4
    if-eqz v1, :cond_5

    .line 238
    const-string v0, "SubaoData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download customer script, response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/subao/common/e/o$a;->b:Lcom/subao/common/j/a$c;

    iget v3, v3, Lcom/subao/common/j/a$c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_5
    iget-object v0, p0, Lcom/subao/common/e/o$a;->b:Lcom/subao/common/j/a$c;

    iget v0, v0, Lcom/subao/common/j/a$c;->a:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 243
    iget-object v0, p0, Lcom/subao/common/e/o$a;->b:Lcom/subao/common/j/a$c;

    iget-object v0, v0, Lcom/subao/common/j/a$c;->b:[B

    .line 244
    if-eqz v0, :cond_6

    array-length v2, v0

    if-nez v2, :cond_7

    .line 245
    :cond_6
    const-string v0, "SubaoData"

    const-string v1, "Customer script downloaded, but pcode is null !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    :cond_7
    :try_start_0
    invoke-static {v0}, Lcom/subao/common/n/b;->a([B)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/subao/common/n/h;->a([BZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 258
    iget-object v3, p0, Lcom/subao/common/e/o$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 259
    if-eqz v1, :cond_0

    .line 260
    const-string v0, "SubaoData"

    const-string v1, "Download customer script, digest verify failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 253
    if-eqz v1, :cond_0

    .line 254
    const-string v0, "SubaoData"

    const-string v1, "Download customer script, calc digest failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 266
    :cond_8
    const-class v2, Lcom/subao/common/b/d$b;

    monitor-enter v2

    .line 267
    :try_start_1
    sget-boolean v3, Lcom/subao/common/b/d$b;->d:Z

    .line 268
    const/4 v4, 0x1

    sput-boolean v4, Lcom/subao/common/b/d$b;->d:Z

    .line 269
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    if-eqz v3, :cond_9

    .line 271
    invoke-static {}, Lcom/subao/common/b/d$b;->e()V

    goto/16 :goto_0

    .line 269
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 273
    :cond_9
    if-eqz v1, :cond_a

    .line 274
    const-string v1, "SubaoData"

    const-string v2, "Inject customer scripts ..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_a
    invoke-virtual {p1, v0}, Lcom/subao/common/g/c;->a([B)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/subao/common/e/u$a;Lcom/subao/common/g/c;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0    # Lcom/subao/common/e/u$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    sget-boolean v0, Lcom/subao/common/b/d$b;->d:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Lcom/subao/common/b/d$b;->e()V

    .line 205
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    .line 207
    :cond_0
    new-instance v0, Lcom/subao/common/b/d$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/subao/common/b/d$b;-><init>(Lcom/subao/common/e/u$a;Lcom/subao/common/g/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/subao/common/m/d;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subao/common/e/o;->a(Ljava/util/concurrent/Executor;)V

    .line 209
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static e()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "SubaoData"

    const-string v1, "Previous customer script already injected, do not download again."

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method


# virtual methods
.method protected a(Lcom/subao/common/e/u$b;)V
    .locals 2
    .param p1    # Lcom/subao/common/e/u$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 282
    invoke-static {p1}, Lcom/subao/common/b/d$b;->b(Lcom/subao/common/e/u$b;)Lcom/subao/common/e/o$a;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/b/d$b;->e:Lcom/subao/common/g/c;

    invoke-static {v0, v1}, Lcom/subao/common/b/d$b;->a(Lcom/subao/common/e/o$a;Lcom/subao/common/g/c;)V

    .line 283
    return-void
.end method
