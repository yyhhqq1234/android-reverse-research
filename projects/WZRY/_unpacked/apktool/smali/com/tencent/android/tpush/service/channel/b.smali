.class public final Lcom/tencent/android/tpush/service/channel/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/horse/l;
.implements Lcom/tencent/android/tpush/service/channel/a/b;


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->RECEIVERCHECK:Lcom/jg/EType;,
        .enum Lcom/jg/EType;->INTENTCHECK:Lcom/jg/EType;,
        .enum Lcom/jg/EType;->INTENTSCHEMECHECK:Lcom/jg/EType;
    }
.end annotation


# static fields
.field private static volatile B:J

.field private static volatile C:J

.field private static D:Ljava/lang/String;

.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:J

.field public static e:I

.field public static f:I

.field public static g:Lorg/json/JSONArray;

.field public static h:Lorg/json/JSONArray;

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field protected static p:I

.field protected static q:Ljava/lang/Boolean;


# instance fields
.field private volatile A:Z

.field private E:Lcom/tencent/android/tpush/horse/k;

.field private F:Landroid/os/Handler;

.field private G:Lcom/tencent/android/tpush/service/channel/t;

.field private H:J

.field private I:Lcom/tencent/android/tpush/service/channel/m;

.field private r:Landroid/os/Handler;

.field private s:Ljava/util/ArrayList;

.field private t:Ljava/util/Map;

.field private u:Ljava/util/Map;

.field private v:Lcom/tencent/android/tpush/service/channel/a/a;

.field private volatile w:Z

.field private x:Landroid/app/PendingIntent;

.field private y:Landroid/app/PendingIntent;

.field private z:Lcom/tencent/android/tpush/service/channel/s;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    sput v1, Lcom/tencent/android/tpush/service/channel/b;->a:I

    .line 99
    sput v1, Lcom/tencent/android/tpush/service/channel/b;->b:I

    .line 100
    sput v1, Lcom/tencent/android/tpush/service/channel/b;->c:I

    .line 102
    sput-wide v4, Lcom/tencent/android/tpush/service/channel/b;->d:J

    .line 103
    sput v1, Lcom/tencent/android/tpush/service/channel/b;->e:I

    .line 105
    sput v1, Lcom/tencent/android/tpush/service/channel/b;->f:I

    .line 106
    sput-object v2, Lcom/tencent/android/tpush/service/channel/b;->g:Lorg/json/JSONArray;

    .line 107
    sput-object v2, Lcom/tencent/android/tpush/service/channel/b;->h:Lorg/json/JSONArray;

    .line 108
    sput v1, Lcom/tencent/android/tpush/service/channel/b;->i:I

    .line 109
    sput v1, Lcom/tencent/android/tpush/service/channel/b;->j:I

    .line 110
    const v0, 0x46cd0

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->k:I

    .line 111
    const v0, 0x2bf20

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->l:I

    .line 112
    const v0, 0x493e0

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->m:I

    .line 113
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->k:I

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->n:I

    .line 115
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->l:I

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->o:I

    .line 116
    sput-wide v4, Lcom/tencent/android/tpush/service/channel/b;->B:J

    .line 117
    sput-wide v4, Lcom/tencent/android/tpush/service/channel/b;->C:J

    .line 118
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/service/channel/b;->D:Ljava/lang/String;

    .line 310
    sput v1, Lcom/tencent/android/tpush/service/channel/b;->p:I

    .line 315
    sput-object v2, Lcom/tencent/android/tpush/service/channel/b;->q:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/b;->r:Landroid/os/Handler;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->s:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->t:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->u:Ljava/util/Map;

    .line 88
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/b;->v:Lcom/tencent/android/tpush/service/channel/a/a;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b;->w:Z

    .line 91
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/b;->x:Landroid/app/PendingIntent;

    .line 93
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/b;->y:Landroid/app/PendingIntent;

    .line 94
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/b;->z:Lcom/tencent/android/tpush/service/channel/s;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b;->A:Z

    .line 162
    new-instance v0, Lcom/tencent/android/tpush/service/channel/c;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/channel/c;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->E:Lcom/tencent/android/tpush/horse/k;

    .line 349
    new-instance v0, Lcom/tencent/android/tpush/service/channel/d;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/channel/d;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->F:Landroid/os/Handler;

    .line 461
    new-instance v0, Lcom/tencent/android/tpush/service/channel/e;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/channel/e;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->G:Lcom/tencent/android/tpush/service/channel/t;

    .line 757
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b;->H:J

    .line 777
    new-instance v0, Lcom/tencent/android/tpush/service/channel/m;

    invoke-direct {v0, p0, v2}, Lcom/tencent/android/tpush/service/channel/m;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/c;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->I:Lcom/tencent/android/tpush/service/channel/m;

    .line 130
    invoke-static {}, Lcom/tencent/android/tpush/horse/g;->a()Lcom/tencent/android/tpush/horse/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/l;)V

    .line 131
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/g;->b()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->r:Landroid/os/Handler;

    .line 140
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/android/tpush/service/channel/c;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/channel/b;J)J
    .locals 1

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/tencent/android/tpush/service/channel/b;->H:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;)Lcom/tencent/android/tpush/service/channel/a/a;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/b;->v:Lcom/tencent/android/tpush/service/channel/a/a;

    return-object p1
.end method

.method public static a()Lcom/tencent/android/tpush/service/channel/b;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/tencent/android/tpush/service/channel/r;->a:Lcom/tencent/android/tpush/service/channel/b;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 75
    sput-object p0, Lcom/tencent/android/tpush/service/channel/b;->D:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(ILcom/tencent/android/tpush/service/channel/s;)V
    .locals 4

    .prologue
    .line 370
    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/common/t;->k(Landroid/content/Context;)V

    .line 375
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 376
    :try_start_1
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_4

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/tencent/android/tpush/service/channel/s;->a:J

    .line 378
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    :goto_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->v:Lcom/tencent/android/tpush/service/channel/a/a;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->v:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/a/a;->h()V

    .line 393
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b;->e()V

    .line 394
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    :try_start_2
    new-instance v0, Lcom/tencent/android/tpush/service/channel/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/android/tpush/service/channel/q;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/c;)V

    .line 397
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->u:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->r:Landroid/os/Handler;

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v2

    iget v2, v2, Lcom/tencent/android/tpush/service/a/a;->f:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 405
    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    invoke-static {}, Lcom/tencent/android/tpush/common/t;->a()V

    .line 409
    :cond_2
    :goto_1
    return-void

    .line 381
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 402
    :catch_0
    move-exception v0

    .line 403
    :try_start_5
    const-string v1, "XGService"

    const-string v2, "messageInQueue"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 405
    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    invoke-static {}, Lcom/tencent/android/tpush/common/t;->a()V

    goto :goto_1

    .line 384
    :cond_4
    :try_start_6
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>FG messageInQueue is full,size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 405
    :catchall_1
    move-exception v0

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/s;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 406
    invoke-static {}, Lcom/tencent/android/tpush/common/t;->a()V

    :cond_5
    throw v0
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/channel/b;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/tencent/android/tpush/service/channel/b;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/a/a;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->v:Lcom/tencent/android/tpush/service/channel/a/a;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/android/tpush/service/channel/b;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/tencent/android/tpush/service/channel/b;->A:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->t:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/android/tpush/service/channel/b;)J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b;->H:J

    return-wide v0
.end method

.method static synthetic e(Lcom/tencent/android/tpush/service/channel/b;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;->l()V

    return-void
.end method

.method static synthetic f(Lcom/tencent/android/tpush/service/channel/b;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;->k()V

    return-void
.end method

.method static synthetic g(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->u:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/android/tpush/service/channel/b;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/s;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->z:Lcom/tencent/android/tpush/service/channel/s;

    return-object v0
.end method

.method public static i()V
    .locals 6

    .prologue
    .line 1140
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1141
    sget-wide v2, Lcom/tencent/android/tpush/service/channel/b;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 1142
    sput-wide v0, Lcom/tencent/android/tpush/service/channel/b;->d:J

    .line 1149
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1150
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1151
    const-string v3, "srv_stime"

    sget-wide v4, Lcom/tencent/android/tpush/service/XGPushServiceV3;->a:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1152
    const-string v3, "srv_etime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1153
    const-string v3, "srv_startTime"

    sget v4, Lcom/tencent/android/tpush/service/XGPushServiceV3;->b:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1154
    sget-object v3, Lcom/tencent/android/tpush/service/XGPushServiceV3;->c:Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 1155
    const-string v3, "srv_freason"

    sget-object v4, Lcom/tencent/android/tpush/service/XGPushServiceV3;->c:Lorg/json/JSONArray;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1159
    :cond_1
    const-string v3, "hb_suc"

    sget v4, Lcom/tencent/android/tpush/service/channel/b;->b:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1161
    const-string v3, "hb_failed"

    sget v4, Lcom/tencent/android/tpush/service/channel/b;->c:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1163
    sget-object v3, Lcom/tencent/android/tpush/service/channel/b;->h:Lorg/json/JSONArray;

    if-eqz v3, :cond_2

    .line 1164
    const-string v3, "hb_freason"

    sget-object v4, Lcom/tencent/android/tpush/service/channel/b;->h:Lorg/json/JSONArray;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1168
    :cond_2
    const-string v3, "con_suc"

    sget v4, Lcom/tencent/android/tpush/service/channel/b;->e:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1170
    const-string v3, "con_failed"

    sget v4, Lcom/tencent/android/tpush/service/channel/b;->f:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1172
    sget-object v3, Lcom/tencent/android/tpush/service/channel/b;->g:Lorg/json/JSONArray;

    if-eqz v3, :cond_3

    .line 1173
    const-string v3, "con_freason"

    sget-object v4, Lcom/tencent/android/tpush/service/channel/b;->g:Lorg/json/JSONArray;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1177
    :cond_3
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v3

    const-string v4, "service_state"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/tencent/android/tpush/service/e/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    sput-wide v0, Lcom/tencent/android/tpush/service/channel/b;->d:J

    .line 1182
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service bi state "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    :cond_4
    :goto_0
    return-void

    .line 1144
    :cond_5
    sget-wide v2, Lcom/tencent/android/tpush/service/channel/b;->d:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    .line 1184
    :catch_0
    move-exception v0

    .line 1185
    const-string v1, "TpnsChannel"

    const-string v2, "saveBIReportJson "

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/t;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->G:Lcom/tencent/android/tpush/service/channel/t;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/tencent/android/tpush/service/channel/b;->D:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized k()V
    .locals 4

    .prologue
    .line 549
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 550
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->z:Lcom/tencent/android/tpush/service/channel/s;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Lcom/tencent/android/tpush/service/channel/s;

    const/4 v1, 0x7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/b;->G:Lcom/tencent/android/tpush/service/channel/t;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/android/tpush/service/channel/s;-><init>(SLcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/t;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->z:Lcom/tencent/android/tpush/service/channel/s;

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->z:Lcom/tencent/android/tpush/service/channel/s;

    iget-object v0, v0, Lcom/tencent/android/tpush/service/channel/s;->d:Lcom/tencent/android/tpush/service/channel/t;

    if-nez v0, :cond_1

    .line 556
    new-instance v0, Lcom/tencent/android/tpush/service/channel/s;

    const/4 v1, 0x7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/b;->G:Lcom/tencent/android/tpush/service/channel/t;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/android/tpush/service/channel/s;-><init>(SLcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/t;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->z:Lcom/tencent/android/tpush/service/channel/s;

    .line 560
    :cond_1
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_2

    .line 561
    const-string v0, "TpnsChannel"

    const-string v1, "Action -> send heartbeat "

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_2
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->z:Lcom/tencent/android/tpush/service/channel/s;

    invoke-direct {p0, v0, v1}, Lcom/tencent/android/tpush/service/channel/b;->a(ILcom/tencent/android/tpush/service/channel/s;)V

    .line 567
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->a:I

    if-lez v0, :cond_3

    sget v0, Lcom/tencent/android/tpush/service/channel/b;->a:I

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_4

    :cond_3
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 569
    :cond_4
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/channel/f;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/service/channel/f;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    .line 578
    :cond_5
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->a:I

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    .line 579
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->j:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_7

    .line 580
    const-string v0, "XGService"

    const-string v1, "heartbeat to watchdog failed too many time , start watchdog again"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const/4 v0, 0x0

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->j:I

    .line 583
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->startWatchdog()V

    .line 608
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;->m()V

    .line 609
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/a;->b(Landroid/content/Context;)V

    .line 611
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/aa;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/aa;->a()V

    .line 612
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    monitor-exit p0

    return-void

    .line 586
    :cond_7
    :try_start_1
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    const-string v1, "heartbeat:"

    new-instance v2, Lcom/tencent/android/tpush/service/channel/g;

    invoke-direct {v2, p0}, Lcom/tencent/android/tpush/service/channel/g;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendHeartbeat2Watchdog(Ljava/lang/String;Lcom/tencent/android/tpush/service/ad;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 603
    :cond_8
    :try_start_2
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendAllLocalXGAppList()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized l()V
    .locals 3

    .prologue
    .line 622
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 623
    const-string v0, "TpnsChannel"

    const-string v1, "Action -> send heartbeatSlave "

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_0
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->i:I

    .line 634
    invoke-static {}, Lcom/tencent/android/tpush/common/j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 635
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->i:I

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 636
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->j:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    .line 637
    const-string v0, "XGService"

    const-string v1, "heartbeat to watchdog failed too many time , start watchdog again"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const/4 v0, 0x0

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->j:I

    .line 640
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->startWatchdog()V

    .line 666
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b;->h()V

    .line 670
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->a()Lcom/tencent/android/tpush/service/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/n;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 672
    const-string v0, "XGService"

    const-string v1, "network is unreachable ,give up and go on slave service"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 643
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    const-string v1, "heartbeat:"

    new-instance v2, Lcom/tencent/android/tpush/service/channel/h;

    invoke-direct {v2, p0}, Lcom/tencent/android/tpush/service/channel/h;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendHeartbeat2Watchdog(Ljava/lang/String;Lcom/tencent/android/tpush/service/ad;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 660
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendAllLocalXGAppList()V

    goto :goto_0

    .line 675
    :cond_5
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->a()Lcom/tencent/android/tpush/service/n;

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 677
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/channel/i;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/service/channel/i;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 734
    :cond_6
    const-string v0, "XGService"

    const-string v1, "PushServiceManager.getInstance().getContext() is null"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private m()V
    .locals 5

    .prologue
    .line 785
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->x:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 786
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/channel/j;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/service/channel/j;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.android.tpush.service.channel.heartbeatIntent"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 795
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.service.channel.heartbeatIntent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 797
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->x:Landroid/app/PendingIntent;

    .line 801
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 802
    sget v2, Lcom/tencent/android/tpush/service/channel/b;->n:I

    sget v3, Lcom/tencent/android/tpush/service/channel/b;->m:I

    if-le v2, v3, :cond_1

    .line 803
    sget v2, Lcom/tencent/android/tpush/service/channel/b;->m:I

    sput v2, Lcom/tencent/android/tpush/service/channel/b;->n:I

    .line 811
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.tencent.android.xg.wx.HeartbeatIntervalMs"

    sget v4, Lcom/tencent/android/tpush/service/channel/b;->n:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/service/e/g;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/tencent/android/tpush/service/channel/b;->n:I

    .line 816
    sget v2, Lcom/tencent/android/tpush/service/channel/b;->n:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 817
    invoke-static {}, Lcom/tencent/android/tpush/service/x;->a()Lcom/tencent/android/tpush/service/x;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/android/tpush/service/channel/b;->x:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/tencent/android/tpush/service/x;->a(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :goto_0
    return-void

    .line 819
    :catch_0
    move-exception v0

    .line 821
    const-string v1, "TpnsChannel"

    const-string v2, "scheduleHeartbeat error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tencent/android/tpush/service/channel/a/a;I)Ljava/util/ArrayList;
    .locals 10

    .prologue
    const/4 v0, 0x1

    .line 920
    monitor-enter p0

    if-ge p2, v0, :cond_0

    move p2, v0

    .line 921
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 922
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 924
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 925
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 926
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 928
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/service/channel/s;

    .line 929
    new-instance v2, Lcom/tencent/android/tpush/service/channel/b/h;

    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/s;->b()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/tencent/android/tpush/service/channel/b/h;-><init>(I)V

    .line 930
    invoke-virtual {v1, v2}, Lcom/tencent/android/tpush/service/channel/s;->a(Lcom/tencent/android/tpush/service/channel/b/h;)V

    .line 931
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    iput-wide v4, v1, Lcom/tencent/android/tpush/service/channel/s;->b:J

    .line 934
    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/s;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 936
    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/s;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 938
    add-int/lit8 v2, p2, -0x1

    .line 940
    iget-object v1, v1, Lcom/tencent/android/tpush/service/channel/s;->c:Lcom/qq/taf/jce/JceStruct;

    instance-of v8, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;

    .line 941
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 942
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/service/channel/s;

    .line 943
    if-eqz v8, :cond_4

    iget-object v3, v1, Lcom/tencent/android/tpush/service/channel/s;->c:Lcom/qq/taf/jce/JceStruct;

    instance-of v3, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/tencent/android/tpush/service/channel/s;->c:Lcom/qq/taf/jce/JceStruct;

    instance-of v3, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushVerifyReq;

    if-eqz v3, :cond_4

    .line 945
    :cond_2
    iget-object v3, v1, Lcom/tencent/android/tpush/service/channel/s;->d:Lcom/tencent/android/tpush/service/channel/t;

    if-eqz v3, :cond_3

    .line 946
    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/b;->r:Landroid/os/Handler;

    new-instance v9, Lcom/tencent/android/tpush/service/channel/k;

    invoke-direct {v9, p0, v1}, Lcom/tencent/android/tpush/service/channel/k;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/s;)V

    invoke-virtual {v3, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 954
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 920
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 957
    :cond_4
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_6

    .line 958
    :try_start_1
    new-instance v2, Lcom/tencent/android/tpush/service/channel/b/h;

    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/s;->b()I

    move-result v9

    invoke-direct {v2, v9}, Lcom/tencent/android/tpush/service/channel/b/h;-><init>(I)V

    .line 960
    invoke-virtual {v1, v2}, Lcom/tencent/android/tpush/service/channel/s;->a(Lcom/tencent/android/tpush/service/channel/b/h;)V

    .line 961
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    iput-wide v4, v1, Lcom/tencent/android/tpush/service/channel/s;->b:J

    .line 963
    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/s;->a()Z

    move-result v2

    if-nez v2, :cond_5

    .line 965
    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/s;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    move v2, v3

    .line 969
    goto :goto_0

    .line 971
    :cond_7
    monitor-exit p0

    return-object v6
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/t;)V
    .locals 3

    .prologue
    .line 414
    if-eqz p1, :cond_0

    .line 420
    :try_start_0
    new-instance v0, Lcom/tencent/android/tpush/service/channel/s;

    invoke-direct {v0, p1, p2}, Lcom/tencent/android/tpush/service/channel/s;-><init>(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/t;)V

    .line 422
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/tencent/android/tpush/service/channel/b;->a(ILcom/tencent/android/tpush/service/channel/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    const-string v1, "XGService"

    const-string v2, "sendMessage error "

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 427
    :cond_0
    const-string v0, "XGService"

    const-string v1, "sendMessage null jceMessage"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/tencent/android/tpush/service/channel/a/a;)V
    .locals 4

    .prologue
    .line 1030
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 1031
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> clientDidCancelled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :cond_0
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    const/16 v1, 0x2776

    const-string v2, "TpnsClient is cancelled!"

    invoke-direct {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;-><init>(ILjava/lang/String;)V

    .line 1036
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->r:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/android/tpush/service/channel/o;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/tencent/android/tpush/service/channel/o;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1038
    return-void
.end method

.method public a(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V
    .locals 4

    .prologue
    .line 1056
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 1057
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> clientDidSendPacket packet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 1065
    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/service/channel/s;

    .line 1066
    if-eqz v0, :cond_1

    .line 1067
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/android/tpush/service/channel/s;->b:J

    .line 1072
    :goto_0
    return-void

    .line 1069
    :cond_1
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> message("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not in the sentQueue!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;)V
    .locals 3

    .prologue
    .line 977
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientExceptionOccurs(isHttpClient : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v2, p1, Lcom/tencent/android/tpush/service/channel/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->f:I

    .line 1001
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->r:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/channel/o;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/tencent/android/tpush/service/channel/o;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1004
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/channel/b;->g:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 1005
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/channel/b;->g:Lorg/json/JSONArray;

    .line 1008
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/service/channel/b;->g:Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tencent/android/tpush/service/channel/b;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    .line 1010
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1011
    if-eqz p2, :cond_1

    .line 1012
    const-string v1, "errorCode"

    iget v2, p2, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;->errorCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1014
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1015
    const-string v1, "np"

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/e/h;->g(Landroid/content/Context;)B

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1019
    :cond_2
    sget-object v1, Lcom/tencent/android/tpush/service/channel/b;->g:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :cond_3
    :goto_0
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->i()V

    .line 1026
    return-void

    .line 1021
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 6

    .prologue
    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 434
    sget-wide v2, Lcom/tencent/android/tpush/service/channel/b;->C:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    if-eqz p1, :cond_2

    .line 435
    :cond_0
    sput-wide v0, Lcom/tencent/android/tpush/service/channel/b;->C:J

    .line 436
    invoke-static {}, Lcom/tencent/android/tpush/service/s;->a()Lcom/tencent/android/tpush/service/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/s;->b()Lcom/tencent/android/tpush/service/channel/s;

    move-result-object v0

    .line 438
    if-eqz v0, :cond_2

    .line 440
    sget-boolean v1, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v1, :cond_1

    .line 441
    const-string v1, "TpnsChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action -> sendReconnMessage with token - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "0"

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 450
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/tencent/android/tpush/service/channel/b;->a(ILcom/tencent/android/tpush/service/channel/s;)V

    .line 454
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendAllLocalXGAppList()V

    .line 459
    :cond_2
    return-void
.end method

.method public b(Z)I
    .locals 6

    .prologue
    .line 743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 745
    sget-wide v2, Lcom/tencent/android/tpush/service/channel/b;->B:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    if-eqz p1, :cond_1

    .line 747
    :cond_0
    sput-wide v0, Lcom/tencent/android/tpush/service/channel/b;->B:J

    .line 748
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    .line 749
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 754
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b;->e()V

    .line 147
    return-void
.end method

.method public b(Lcom/tencent/android/tpush/service/channel/a/a;)V
    .locals 4

    .prologue
    .line 1042
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 1043
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> clientDidRetired "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :cond_0
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    const/16 v1, 0x2779

    const-string v2, "TpnsMessage timeout!"

    invoke-direct {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;-><init>(ILjava/lang/String;)V

    .line 1049
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->r:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/android/tpush/service/channel/o;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/tencent/android/tpush/service/channel/o;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1051
    return-void
.end method

.method public declared-synchronized b(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V
    .locals 3

    .prologue
    .line 1077
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/channel/b;->b(Z)I

    .line 1079
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 1080
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> clientDidReceivePacket packet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->j()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1129
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> clientDidReceivePacket unkonwn protocol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    :goto_0
    monitor-exit p0

    return-void

    .line 1108
    :sswitch_0
    :try_start_1
    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> clientDidReceivePacket RequestSuccRunnable NEV1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->r:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/channel/p;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/service/channel/p;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1122
    :goto_1
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;->m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1077
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1116
    :cond_1
    :try_start_2
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> clientDidReceivePacket PushMessageRunnable NEV1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->r:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/channel/n;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/service/channel/n;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1126
    :sswitch_1
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->r:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/channel/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/service/channel/l;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1085
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public c()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b;->w:Z

    .line 151
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->v:Lcom/tencent/android/tpush/service/channel/a/a;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->v:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/a/a;->c()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->v:Lcom/tencent/android/tpush/service/channel/a/a;

    .line 155
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b;->c()V

    .line 159
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b;->e()V

    .line 160
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 276
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> checkAndSetupClient( tpnsClient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/b;->v:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isClientCreating = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/android/tpush/service/channel/b;->w:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_0
    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->v:Lcom/tencent/android/tpush/service/channel/a/a;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b;->w:Z

    if-nez v0, :cond_2

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :try_start_1
    invoke-static {}, Lcom/tencent/android/tpush/horse/g;->a()Lcom/tencent/android/tpush/horse/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->E:Lcom/tencent/android/tpush/horse/k;

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/k;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 308
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    const-string v1, "TpnsChannel"

    const-string v2, "createOptimalSocketChannel error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 292
    :cond_2
    :try_start_3
    iget-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b;->w:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->v:Lcom/tencent/android/tpush/service/channel/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->v:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    const-string v0, "TpnsChannel"

    const-string v1, "The socket Channel is unconnected"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    :try_start_4
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->v:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/a/a;->c()V

    .line 298
    invoke-static {}, Lcom/tencent/android/tpush/horse/g;->a()Lcom/tencent/android/tpush/horse/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->E:Lcom/tencent/android/tpush/horse/k;

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/k;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 301
    :catch_1
    move-exception v0

    .line 302
    :try_start_5
    const-string v1, "XGService"

    const-string v2, "createOptimalSocketChannel error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized f()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 318
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/e/a;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/common/t;->j(Landroid/content/Context;)I

    move-result v3

    .line 321
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/common/t;->i(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    if-lez v3, :cond_1

    .line 324
    :cond_0
    sget v2, Lcom/tencent/android/tpush/service/channel/b;->p:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit16 v2, v2, 0x3e8

    .line 325
    sget v4, Lcom/tencent/android/tpush/service/channel/b;->p:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/tencent/android/tpush/service/channel/b;->p:I

    .line 326
    sget v4, Lcom/tencent/android/tpush/service/channel/b;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v4, v5, :cond_2

    .line 346
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 328
    :cond_2
    :try_start_1
    sget v4, Lcom/tencent/android/tpush/service/channel/b;->l:I

    if-le v2, v4, :cond_3

    .line 329
    sget v2, Lcom/tencent/android/tpush/service/channel/b;->l:I

    .line 330
    :cond_3
    sget v4, Lcom/tencent/android/tpush/service/channel/b;->p:I

    if-le v4, v5, :cond_4

    if-ne v3, v1, :cond_1

    .line 332
    :cond_4
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->F:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 333
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_5

    .line 334
    const-string v0, "TpnsChannel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnected and retry HANDLER_CHECKANDSETUP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retry times = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/android/tpush/service/channel/b;->p:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_5
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->F:Landroid/os/Handler;

    const/16 v3, 0x3e8

    int-to-long v4, v2

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    move v0, v1

    .line 342
    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->y:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->I:Lcom/tencent/android/tpush/service/channel/m;

    if-eqz v0, :cond_0

    .line 831
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->I:Lcom/tencent/android/tpush/service/channel/m;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 835
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public h()V
    .locals 5

    .prologue
    .line 847
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->y:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 849
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 850
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 851
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 852
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 854
    const-string v1, "com.tencent.android.tpush.service.channel.heartbeatIntent.pullup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 855
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/b;->I:Lcom/tencent/android/tpush/service/channel/m;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 857
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.service.channel.heartbeatIntent.pullup"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 859
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->y:Landroid/app/PendingIntent;

    .line 863
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 864
    sget v2, Lcom/tencent/android/tpush/service/channel/b;->o:I

    sget v3, Lcom/tencent/android/tpush/service/channel/b;->m:I

    if-le v2, v3, :cond_1

    .line 865
    sget v2, Lcom/tencent/android/tpush/service/channel/b;->m:I

    sput v2, Lcom/tencent/android/tpush/service/channel/b;->o:I

    .line 874
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.tencent.android.xg.wx.HeartbeatIntervalMs"

    sget v4, Lcom/tencent/android/tpush/service/channel/b;->o:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/service/e/g;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/tencent/android/tpush/service/channel/b;->o:I

    .line 879
    sget v2, Lcom/tencent/android/tpush/service/channel/b;->o:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 880
    invoke-static {}, Lcom/tencent/android/tpush/service/x;->a()Lcom/tencent/android/tpush/service/x;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/android/tpush/service/channel/b;->y:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/tencent/android/tpush/service/x;->a(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :goto_0
    return-void

    .line 882
    :catch_0
    move-exception v0

    .line 884
    const-string v1, "TpnsChannel"

    const-string v2, "scheduleHeartbeat error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
