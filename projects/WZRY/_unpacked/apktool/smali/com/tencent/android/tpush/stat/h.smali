.class public Lcom/tencent/android/tpush/stat/h;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static volatile a:J

.field private static b:Ljava/util/Map;

.field private static volatile c:Landroid/os/Handler;

.field private static volatile d:I

.field private static volatile e:Ljava/lang/String;

.field private static volatile f:Ljava/lang/String;

.field private static g:Lcom/tencent/android/tpush/stat/a/f;

.field private static h:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static i:Landroid/content/Context;

.field private static j:Ljava/lang/String;

.field private static volatile k:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/stat/h;->b:Ljava/util/Map;

    .line 60
    sput-object v2, Lcom/tencent/android/tpush/stat/h;->c:Landroid/os/Handler;

    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/tencent/android/tpush/stat/h;->d:I

    .line 70
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/stat/h;->e:Ljava/lang/String;

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/stat/h;->f:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/e;->b()Lcom/tencent/android/tpush/stat/a/f;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    .line 84
    sput-object v2, Lcom/tencent/android/tpush/stat/h;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 86
    sput-object v2, Lcom/tencent/android/tpush/stat/h;->i:Landroid/content/Context;

    .line 323
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/android/tpush/stat/h;->a:J

    .line 613
    sput-object v2, Lcom/tencent/android/tpush/stat/h;->j:Ljava/lang/String;

    .line 700
    sput-object v2, Lcom/tencent/android/tpush/stat/h;->k:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 89
    if-eqz p0, :cond_0

    .line 92
    :goto_0
    return-object p0

    :cond_0
    sget-object p0, Lcom/tencent/android/tpush/stat/h;->i:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    .prologue
    .line 51
    sput-object p0, Lcom/tencent/android/tpush/stat/h;->k:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    .prologue
    .line 51
    sput-object p0, Lcom/tencent/android/tpush/stat/h;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method static a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 292
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 294
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 295
    sget-object v2, Lcom/tencent/android/tpush/stat/c;->b:Lcom/tencent/android/tpush/stat/d;

    iget v2, v2, Lcom/tencent/android/tpush/stat/d;->d:I

    if-eqz v2, :cond_0

    .line 296
    const-string/jumbo v2, "v"

    sget-object v3, Lcom/tencent/android/tpush/stat/c;->b:Lcom/tencent/android/tpush/stat/d;

    iget v3, v3, Lcom/tencent/android/tpush/stat/d;->d:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 298
    :cond_0
    sget-object v2, Lcom/tencent/android/tpush/stat/c;->b:Lcom/tencent/android/tpush/stat/d;

    iget v2, v2, Lcom/tencent/android/tpush/stat/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 301
    sget-object v2, Lcom/tencent/android/tpush/stat/c;->a:Lcom/tencent/android/tpush/stat/d;

    iget v2, v2, Lcom/tencent/android/tpush/stat/d;->d:I

    if-eqz v2, :cond_1

    .line 302
    const-string/jumbo v2, "v"

    sget-object v3, Lcom/tencent/android/tpush/stat/c;->a:Lcom/tencent/android/tpush/stat/d;

    iget v3, v3, Lcom/tencent/android/tpush/stat/d;->d:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 304
    :cond_1
    sget-object v2, Lcom/tencent/android/tpush/stat/c;->a:Lcom/tencent/android/tpush/stat/d;

    iget v2, v2, Lcom/tencent/android/tpush/stat/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-object v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    sget-object v2, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 628
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitEvents, maxNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Object;)V

    .line 634
    :cond_2
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 635
    if-nez v0, :cond_3

    .line 636
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The Context of StatService.commitEvents() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 639
    :cond_3
    const/4 v1, -0x1

    if-lt p1, v1, :cond_4

    if-nez p1, :cond_5

    .line 640
    :cond_4
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The maxNumber of StatService.commitEvents() should be -1 or bigger than 0."

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 643
    :cond_5
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/android/tpush/stat/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/h;->e(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 647
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->c:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/stat/s;

    invoke-direct {v1}, Lcom/tencent/android/tpush/stat/s;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static a(Landroid/content/Context;J)V
    .locals 7

    .prologue
    .line 318
    new-instance v0, Lcom/tencent/android/tpush/stat/event/f;

    sget v2, Lcom/tencent/android/tpush/stat/h;->d:I

    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->a()Lorg/json/JSONObject;

    move-result-object v3

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/android/tpush/stat/event/f;-><init>(Landroid/content/Context;ILorg/json/JSONObject;J)V

    .line 320
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/h;->a(Lcom/tencent/android/tpush/stat/event/d;)V

    .line 321
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/android/tpush/stat/event/d;)V
    .locals 2

    .prologue
    .line 364
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->i:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 368
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->d(Landroid/content/Context;)V

    .line 370
    :cond_2
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 371
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/h;->e(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->c:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/stat/n;

    invoke-direct {v1, p1}, Lcom/tencent/android/tpush/stat/n;-><init>(Lcom/tencent/android/tpush/stat/event/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 774
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 775
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->e(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 776
    sget-object v1, Lcom/tencent/android/tpush/stat/h;->c:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/android/tpush/stat/l;

    invoke-direct {v2, v0, p0, p2, p3}, Lcom/tencent/android/tpush/stat/l;-><init>(Ljava/lang/String;Landroid/content/Context;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 802
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JJJ)V
    .locals 8

    .prologue
    .line 890
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 900
    :goto_0
    return-void

    .line 894
    :cond_0
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 895
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 896
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The Context or pageName of StatService.trackEndPage() can not be null or empty!"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    .line 899
    invoke-static/range {v0 .. v7}, Lcom/tencent/android/tpush/stat/h;->b(Landroid/content/Context;Ljava/lang/String;JJJ)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;JJ)V
    .locals 9

    .prologue
    .line 388
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 392
    if-nez v1, :cond_2

    .line 393
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The Context of StatService.trackCustomEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 396
    :cond_2
    invoke-static {p1}, Lcom/tencent/android/tpush/stat/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 397
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The event_id of StatService.trackCustomEvent() can not be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 400
    :cond_3
    new-instance v4, Lcom/tencent/android/tpush/stat/event/b;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0, p2}, Lcom/tencent/android/tpush/stat/event/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    .line 401
    invoke-static {v1}, Lcom/tencent/android/tpush/stat/h;->e(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    sget-object v7, Lcom/tencent/android/tpush/stat/h;->c:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/android/tpush/stat/o;

    move-wide v2, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/android/tpush/stat/o;-><init>(Landroid/content/Context;JLcom/tencent/android/tpush/stat/event/b;J)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 425
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 429
    if-nez v0, :cond_2

    .line 430
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The Context of StatService.trackCustomEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 433
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 434
    :cond_3
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The reportList of StatService.trackCustomEvent() can not be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 437
    :cond_4
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/h;->e(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 438
    sget-object v1, Lcom/tencent/android/tpush/stat/h;->c:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/android/tpush/stat/p;

    invoke-direct {v2, p1, v0}, Lcom/tencent/android/tpush/stat/p;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static a(Lcom/tencent/android/tpush/stat/event/d;)V
    .locals 3

    .prologue
    .line 682
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send Event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->h(Ljava/lang/Object;)V

    .line 683
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/stat/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/f;->b(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/f;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/stat/j;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/stat/j;-><init>(Lcom/tencent/android/tpush/stat/event/d;)V

    invoke-virtual {v0, p0, v1}, Lcom/tencent/android/tpush/stat/f;->a(Lcom/tencent/android/tpush/stat/event/d;Lcom/tencent/android/tpush/stat/e;)V

    .line 698
    :goto_0
    return-void

    .line 696
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tencent/android/tpush/stat/event/d;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/h;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method static a(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 662
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sentEventList size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->h(Ljava/lang/Object;)V

    .line 663
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/stat/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/f;->b(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/f;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/stat/t;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/stat/t;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p0, v1}, Lcom/tencent/android/tpush/stat/f;->b(Ljava/util/List;Lcom/tencent/android/tpush/stat/e;)V

    .line 679
    :goto_0
    return-void

    .line 677
    :cond_0
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 176
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Landroid/content/Context;J)I
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 336
    sget-wide v4, Lcom/tencent/android/tpush/stat/h;->a:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 337
    sget-object v1, Lcom/tencent/android/tpush/stat/h;->i:Landroid/content/Context;

    const-string v4, "_INTER_MTA_NEXT_DAY"

    invoke-static {v1, v4, v6, v7}, Lcom/tencent/android/tpush/stat/a/g;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/tencent/android/tpush/stat/h;->a:J

    .line 342
    :cond_0
    const/4 v1, 0x0

    .line 344
    sget v4, Lcom/tencent/android/tpush/stat/h;->d:I

    if-nez v4, :cond_3

    .line 350
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 351
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/e;->a()I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/stat/h;->d:I

    .line 352
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/e;->c()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/android/tpush/stat/h;->a:J

    .line 354
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->i:Landroid/content/Context;

    const-string v1, "_INTER_MTA_NEXT_DAY"

    sget-wide v2, Lcom/tencent/android/tpush/stat/h;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/android/tpush/stat/a/g;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 356
    invoke-static {p0, p1, p2}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;J)V

    .line 358
    :cond_2
    sget v0, Lcom/tencent/android/tpush/stat/h;->d:I

    return v0

    .line 346
    :cond_3
    sget-wide v4, Lcom/tencent/android/tpush/stat/h;->a:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 51
    sput-object p0, Lcom/tencent/android/tpush/stat/h;->e:Ljava/lang/String;

    return-object p0
.end method

.method static b()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 903
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->k:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 904
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 906
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 907
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 908
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 909
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 911
    invoke-static {v1}, Lcom/tencent/android/tpush/stat/h;->e(Ljava/util/List;)V

    .line 912
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 915
    :cond_1
    invoke-static {v1}, Lcom/tencent/android/tpush/stat/h;->e(Ljava/util/List;)V

    .line 916
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 919
    :cond_2
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 96
    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/h;->i:Landroid/content/Context;

    .line 99
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 806
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    :goto_0
    return-void

    .line 810
    :cond_0
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 811
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 812
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The Context or pageName of StatService.trackBeginPage() can not be null or empty!"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 815
    :cond_2
    invoke-static {v0, p1, p2, p3}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;JJJ)V
    .locals 10

    .prologue
    .line 822
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 823
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->e(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 824
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->c:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/stat/m;

    move-object v3, p0

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/tencent/android/tpush/stat/m;-><init>(Ljava/lang/String;Landroid/content/Context;JJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 871
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 468
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 472
    if-nez v0, :cond_2

    .line 473
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The Context of StatService.trackCustomEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 476
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 477
    :cond_3
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The reportList of StatService.trackCustomEvent() can not be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 480
    :cond_4
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/h;->e(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 481
    sget-object v1, Lcom/tencent/android/tpush/stat/h;->c:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/android/tpush/stat/q;

    invoke-direct {v2, p1, v0}, Lcom/tencent/android/tpush/stat/q;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static declared-synchronized b(Ljava/util/List;)V
    .locals 6

    .prologue
    .line 704
    const-class v1, Lcom/tencent/android/tpush/stat/h;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->k:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 705
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "store event size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/stat/a/f;->h(Ljava/lang/Object;)V

    .line 706
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 707
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 708
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    :try_start_1
    sget-object v2, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    :cond_0
    :goto_1
    monitor-exit v1

    return-void

    .line 710
    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 51
    sput-object p0, Lcom/tencent/android/tpush/stat/h;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 875
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 885
    :goto_0
    return-void

    .line 879
    :cond_0
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 880
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 881
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The Context or pageName of StatService.trackEndPage() can not be null or empty!"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    move-wide v2, p2

    move-wide v6, v4

    .line 884
    invoke-static/range {v0 .. v7}, Lcom/tencent/android/tpush/stat/h;->b(Landroid/content/Context;Ljava/lang/String;JJJ)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 516
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 520
    if-nez v0, :cond_2

    .line 521
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The Context of StatService.trackCustomEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 524
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 525
    :cond_3
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The reportList of StatService.trackCustomEvent() can not be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 528
    :cond_4
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/h;->e(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 529
    sget-object v1, Lcom/tencent/android/tpush/stat/h;->c:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/android/tpush/stat/r;

    invoke-direct {v2, p1, v0}, Lcom/tencent/android/tpush/stat/r;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static declared-synchronized c(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 719
    const-class v1, Lcom/tencent/android/tpush/stat/h;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->k:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 720
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete event size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/stat/a/f;->h(Ljava/lang/Object;)V

    .line 721
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 722
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 723
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 727
    :catch_0
    move-exception v0

    .line 728
    :try_start_1
    sget-object v2, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    :cond_0
    :goto_1
    monitor-exit v1

    return-void

    .line 725
    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 719
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static c(Landroid/content/Context;)Z
    .locals 7

    .prologue
    .line 155
    sget-object v0, Lcom/tencent/android/tpush/stat/c;->c:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/android/tpush/stat/a/g;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 157
    const-string v0, "2.0.6"

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/e;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 159
    const/4 v0, 0x1

    .line 160
    cmp-long v1, v4, v2

    if-gtz v1, :cond_0

    .line 161
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MTA is disable for current version:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",wakeup version:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    .line 163
    const/4 v0, 0x0

    .line 165
    :cond_0
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/c;->a(Z)V

    .line 166
    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method static declared-synchronized d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 188
    const-class v1, Lcom/tencent/android/tpush/stat/h;

    monitor-enter v1

    if-nez p0, :cond_1

    .line 263
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 192
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 194
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 198
    sput-object v0, Lcom/tencent/android/tpush/stat/h;->i:Landroid/content/Context;

    .line 219
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "XgStat"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 221
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v3, Lcom/tencent/android/tpush/stat/h;->c:Landroid/os/Handler;

    .line 222
    sget-object v2, Lcom/tencent/android/tpush/stat/h;->c:Landroid/os/Handler;

    new-instance v3, Lcom/tencent/android/tpush/stat/i;

    invoke-direct {v3, v0}, Lcom/tencent/android/tpush/stat/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized d(Ljava/util/List;)V
    .locals 6

    .prologue
    .line 734
    const-class v1, Lcom/tencent/android/tpush/stat/h;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->k:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 735
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 736
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 737
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 738
    sget-object v4, Lcom/tencent/android/tpush/stat/h;->k:Landroid/content/SharedPreferences;

    const/4 v5, 0x1

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 739
    if-lez v4, :cond_1

    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->f()S

    move-result v5

    if-gt v4, v5, :cond_1

    .line 740
    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    .line 748
    :try_start_1
    sget-object v2, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    :cond_0
    :goto_1
    monitor-exit v1

    return-void

    .line 742
    :cond_1
    :try_start_2
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 745
    :cond_2
    :try_start_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method static synthetic e()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Landroid/os/Handler;
    .locals 3

    .prologue
    .line 272
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->c:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 273
    const-class v1, Lcom/tencent/android/tpush/stat/h;

    monitor-enter v1

    .line 274
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->c:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 276
    :try_start_1
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->d(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->c:Landroid/os/Handler;

    return-object v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    :try_start_3
    sget-object v2, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/f;->a(Ljava/lang/Throwable;)V

    .line 279
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/c;->a(Z)V

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method static e(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 753
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/f;->b(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/f;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/stat/k;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/stat/k;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p0, v1}, Lcom/tencent/android/tpush/stat/f;->b(Ljava/util/List;Lcom/tencent/android/tpush/stat/e;)V

    goto :goto_0
.end method

.method static synthetic f()Lcom/tencent/android/tpush/stat/a/f;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Lcom/tencent/android/tpush/stat/a/f;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic h()Ljava/util/Map;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->f:Ljava/lang/String;

    return-object v0
.end method
