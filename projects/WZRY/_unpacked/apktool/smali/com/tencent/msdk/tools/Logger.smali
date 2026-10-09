.class public Lcom/tencent/msdk/tools/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/tools/Logger$FileLogHandler;
    }
.end annotation


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static DEFAULT_TAG:Ljava/lang/String; = null

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final LOG_BOTH:I = 0x3

.field public static final LOG_CONSOLE:I = 0x1

.field public static final LOG_FILE:I = 0x2

.field private static final LOG_FILE_SIZE:J = 0xa00000L

.field private static final LOG_NULL:I = 0x0

.field private static final STACK_TRACE_DEEP:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static fileLog:Lcom/tencent/msdk/tools/Logger$FileLogHandler;

.field private static logDevice:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "WeGame"

    sput-object v0, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    sput v0, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Intent;)V
    .locals 10
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x3

    .line 337
    sget v5, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-nez v5, :cond_0

    .line 374
    :goto_0
    return-void

    .line 340
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/tencent/msdk/tools/Logger;->getTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "tag":Ljava/lang/String;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_2

    .line 342
    :cond_1
    const-string v5, "********************** INTENT START **************************"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 343
    const-string v5, "empty Intent"

    sget v6, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v7, v4, v5, v6}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 344
    const-string v5, "********************** INTENT END **************************"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_2
    const-string v5, "********************** INTENT START **************************"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 348
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v7, v4, v5, v6}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Component: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v7, v4, v5, v6}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 350
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Flags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v7, v4, v5, v6}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheme: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v7, v4, v5, v6}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 354
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 355
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 356
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 357
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, [B

    if-eqz v6, :cond_4

    .line 358
    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 359
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    .line 358
    invoke-static {v6, v4, v7, v8}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 370
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v5, "********************** INTENT END **************************"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 360
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 361
    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v6, v4, v7, v8}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 362
    :cond_5
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_6

    .line 363
    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v6, v4, v7, v8}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 364
    :cond_6
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_7

    .line 365
    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v6, v4, v7, v8}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 367
    :cond_7
    const/4 v6, 0x3

    sget v7, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v6, v4, v2, v7}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static d(Landroid/os/Bundle;)V
    .locals 9
    .param p0, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x3

    .line 310
    sget v3, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-nez v3, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/tencent/msdk/tools/Logger;->getTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "tag":Ljava/lang/String;
    if-nez p0, :cond_2

    .line 315
    const-string v3, "empty bundle"

    sget v4, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v8, v2, v3, v4}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 319
    :cond_2
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 320
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, [B

    if-eqz v4, :cond_3

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 323
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    .line 322
    invoke-static {v8, v2, v4, v5}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 324
    :cond_3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v8, v2, v4, v5}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 326
    :cond_4
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v8, v2, v4, v5}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 328
    :cond_5
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v8, v2, v4, v5}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 331
    :cond_6
    sget v4, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v8, v2, v0, v4}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x3

    .line 298
    sget v1, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-nez v1, :cond_0

    .line 307
    :goto_0
    return-void

    .line 301
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/Logger;->getTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "tag":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 303
    const-string v1, "empty msg"

    sget v2, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v3, v0, v1, v2}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v3, v0, v1, v2}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 292
    sget v0, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-lez v0, :cond_0

    .line 293
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/Logger;->getTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 295
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 377
    sget v0, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-lez v0, :cond_0

    .line 378
    const/4 v0, 0x3

    sget v1, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v0, p0, p1, v1}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 380
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 252
    sget v0, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-lez v0, :cond_0

    .line 253
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/Logger;->getTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v0, v1, p0, v2}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 256
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 274
    sget v0, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-lez v0, :cond_0

    .line 275
    const/4 v0, 0x6

    sget v1, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v0, p0, p1, v1}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 277
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v4, 0x1

    .line 259
    if-nez p1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 262
    :cond_0
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 263
    .local v1, "stacks":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    if-le v2, v4, :cond_1

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "class : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; line : "

    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    const/4 v2, 0x6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v2, p0, v3, v4}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 270
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTag(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "subTag"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    .line 222
    const-string v5, ""

    .line 223
    .local v5, "tag":Ljava/lang/String;
    const/4 v7, 0x0

    .line 225
    .local v7, "traces":[Ljava/lang/StackTraceElement;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 231
    if-eqz v7, :cond_0

    if-ltz p1, :cond_0

    array-length v8, v7

    if-lt p1, v8, :cond_1

    .line 232
    :cond_0
    sget-object v8, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    move-object v6, v5

    .line 248
    .end local v5    # "tag":Ljava/lang/String;
    .local v6, "tag":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 226
    .end local v6    # "tag":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 227
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    sget-object v8, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    move-object v6, v5

    .end local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 234
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "tag":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    :cond_1
    aget-object v8, v7, p1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "clsName":Ljava/lang/String;
    aget-object v8, v7, p1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "methodName":Ljava/lang/String;
    const-string v4, ""

    .line 237
    .local v4, "shortClsName":Ljava/lang/String;
    const/16 v8, 0x2e

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 238
    .local v1, "dot":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    .line 239
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 242
    :cond_2
    invoke-static {p0}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 243
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v6, v5

    .end local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "tag":Ljava/lang/String;
    move-object v8, v5

    .line 248
    goto :goto_0

    .line 245
    .end local v6    # "tag":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static setLogType(Landroid/app/Activity;)V
    .locals 7
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x1

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "localLog"

    .line 49
    invoke-static {v3, v4}, Lcom/tencent/msdk/config/ConfigManager;->readValueByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "logTypeString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 53
    .local v1, "logType":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 57
    :goto_0
    sget-object v3, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Logger type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    packed-switch v1, :pswitch_data_0

    .line 72
    sput v6, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    .line 75
    :goto_1
    sget v3, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-le v3, v6, :cond_0

    .line 76
    new-instance v3, Lcom/tencent/msdk/tools/Logger$FileLogHandler;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tencent/msdk/tools/Logger$FileLogHandler;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/tencent/msdk/tools/Logger;->fileLog:Lcom/tencent/msdk/tools/Logger$FileLogHandler;

    .line 78
    :cond_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_0
    sput v6, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    goto :goto_1

    .line 63
    :pswitch_1
    const/4 v3, 0x2

    sput v3, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    goto :goto_1

    .line 66
    :pswitch_2
    const/4 v3, 0x3

    sput v3, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    goto :goto_1

    .line 69
    :pswitch_3
    const/4 v3, 0x0

    sput v3, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    goto :goto_1

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static showInConsole(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "logType"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 113
    if-nez p2, :cond_0

    .line 114
    const-string p2, "NULL MSG"

    .line 116
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 118
    :pswitch_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :pswitch_2
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :pswitch_3
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :pswitch_4
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static showLog(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "logType"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "device"    # I

    .prologue
    const-wide/16 v4, 0x3e8

    .line 81
    invoke-static {p2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string p2, "NULL MSG"

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x59

    if-le v0, v1, :cond_1

    .line 85
    const/4 v0, 0x6

    sget-object v1, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    const-string/jumbo v2, "tag is longer than 89"

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/tools/Logger;->showInConsole(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x56

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 93
    :cond_1
    packed-switch p3, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 95
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/tencent/msdk/tools/Logger;->showInConsole(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->writeToLog(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/tencent/msdk/tools/Logger;->showInConsole(ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->writeToLog(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static timeStamp(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 7
    .param p0, "exception"    # Ljava/lang/Exception;
    .param p1, "step"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 139
    .local v3, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "methodName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    .line 142
    .local v1, "lineNum":I
    if-nez p1, :cond_0

    .line 143
    const-string p1, ""

    .line 146
    :goto_0
    const-string v4, "TimeStamp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 145
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 280
    sget v0, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-lez v0, :cond_0

    .line 281
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/Logger;->getTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v0, v1, p0, v2}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 283
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 286
    sget v0, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-lez v0, :cond_0

    .line 287
    const/4 v0, 0x5

    sget v1, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v0, p0, p1, v1}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 289
    :cond_0
    return-void
.end method

.method private static writeToLog(Ljava/lang/String;)V
    .locals 2
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 151
    sget-object v1, Lcom/tencent/msdk/tools/Logger;->fileLog:Lcom/tencent/msdk/tools/Logger$FileLogHandler;

    invoke-virtual {v1}, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 152
    .local v0, "msg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    sget-object v1, Lcom/tencent/msdk/tools/Logger;->fileLog:Lcom/tencent/msdk/tools/Logger$FileLogHandler;

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    return-void
.end method
