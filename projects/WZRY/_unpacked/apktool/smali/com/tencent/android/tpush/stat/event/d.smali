.class public abstract Lcom/tencent/android/tpush/stat/event/d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static f:Ljava/lang/String;

.field protected static h:Ljava/lang/String;


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:J

.field protected d:J

.field protected e:I

.field protected g:Ljava/lang/String;

.field protected i:J

.field protected j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "xgsdk"

    sput-object v0, Lcom/tencent/android/tpush/stat/event/d;->f:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/stat/event/d;->h:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IJ)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->b:Ljava/lang/String;

    .line 35
    iput-wide v2, p0, Lcom/tencent/android/tpush/stat/event/d;->c:J

    .line 47
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->g:Ljava/lang/String;

    .line 50
    iput-wide v2, p0, Lcom/tencent/android/tpush/stat/event/d;->i:J

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Axg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->b:Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/android/tpush/stat/event/d;->a(Landroid/content/Context;IJ)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->b:Ljava/lang/String;

    .line 35
    iput-wide v2, p0, Lcom/tencent/android/tpush/stat/event/d;->c:J

    .line 47
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->g:Ljava/lang/String;

    .line 50
    iput-wide v2, p0, Lcom/tencent/android/tpush/stat/event/d;->i:J

    .line 72
    iput-object p2, p0, Lcom/tencent/android/tpush/stat/event/d;->b:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/event/d;->c:J

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/tencent/android/tpush/stat/event/d;->a(Landroid/content/Context;IJ)V

    .line 74
    return-void
.end method

.method private a(Landroid/content/Context;IJ)V
    .locals 5

    .prologue
    .line 77
    iput-object p1, p0, Lcom/tencent/android/tpush/stat/event/d;->j:Landroid/content/Context;

    .line 78
    iput-wide p3, p0, Lcom/tencent/android/tpush/stat/event/d;->c:J

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/android/tpush/stat/event/d;->d:J

    .line 80
    iput p2, p0, Lcom/tencent/android/tpush/stat/event/d;->e:I

    .line 81
    invoke-static {p1, p3, p4}, Lcom/tencent/android/tpush/stat/a/e;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->g:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/tencent/android/tpush/stat/event/d;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/android/tpush/stat/event/d;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_1

    .line 83
    :cond_0
    invoke-static {p1}, Lcom/tencent/android/tpush/XGPushConfig;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/event/d;->h:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/tencent/android/tpush/stat/event/d;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    const-string v0, "0"

    sput-object v0, Lcom/tencent/android/tpush/stat/event/d;->h:Ljava/lang/String;

    .line 88
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a(Lorg/json/JSONObject;)Z
.end method

.method public abstract b()Lcom/tencent/android/tpush/stat/event/EventType;
.end method

.method public b(Lorg/json/JSONObject;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 101
    :try_start_0
    const-string v1, "ky"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/event/d;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/android/tpush/stat/a/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "et"

    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/event/d;->b()Lcom/tencent/android/tpush/stat/event/EventType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/android/tpush/stat/event/EventType;->a()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    const-string/jumbo v1, "ui"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/event/d;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/android/tpush/stat/a/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v1, "mc"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/event/d;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/android/tpush/stat/a/h;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/tencent/android/tpush/stat/a/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "ut"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/event/d;->b()Lcom/tencent/android/tpush/stat/event/EventType;

    move-result-object v1

    sget-object v2, Lcom/tencent/android/tpush/stat/event/EventType;->SESSION_ENV:Lcom/tencent/android/tpush/stat/event/EventType;

    if-eq v1, v2, :cond_0

    .line 107
    const-string v1, "av"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/event/d;->g:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/android/tpush/stat/a/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "ch"

    sget-object v2, Lcom/tencent/android/tpush/stat/event/d;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/android/tpush/stat/a/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    const-string v1, "mid"

    sget-object v2, Lcom/tencent/android/tpush/stat/event/d;->h:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/android/tpush/stat/a/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "si"

    iget v2, p0, Lcom/tencent/android/tpush/stat/event/d;->e:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/event/d;->b()Lcom/tencent/android/tpush/stat/event/EventType;

    move-result-object v1

    sget-object v2, Lcom/tencent/android/tpush/stat/event/EventType;->CUSTOM:Lcom/tencent/android/tpush/stat/event/EventType;

    if-ne v1, v2, :cond_2

    .line 114
    const-string v1, "cts"

    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/event/d;->d:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 115
    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/event/d;->i:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/event/d;->d:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 116
    const-string/jumbo v1, "ts"

    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/event/d;->d:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 123
    :goto_0
    const-string v1, "0"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/event/d;->j:Landroid/content/Context;

    iget-wide v4, p0, Lcom/tencent/android/tpush/stat/event/d;->c:J

    invoke-static {v2, v4, v5}, Lcom/tencent/android/tpush/stat/a/e;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    const-string/jumbo v1, "sv"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/event/d;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/android/tpush/stat/a/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    :goto_1
    const-string v1, "dts"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/event/d;->j:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/stat/a/e;->a(Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/stat/event/d;->a(Lorg/json/JSONObject;)Z

    move-result v0

    .line 132
    :goto_2
    return v0

    .line 118
    :cond_1
    const-string/jumbo v1, "ts"

    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/event/d;->i:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    goto :goto_2

    .line 121
    :cond_2
    const-string/jumbo v1, "ts"

    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/event/d;->d:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 126
    :cond_3
    const-string/jumbo v1, "sv"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/event/d;->j:Landroid/content/Context;

    iget-wide v4, p0, Lcom/tencent/android/tpush/stat/event/d;->c:J

    invoke-static {v2, v4, v5}, Lcom/tencent/android/tpush/stat/a/e;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 139
    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/stat/event/d;->b(Lorg/json/JSONObject;)Z

    .line 140
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    const-string v0, ""

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/event/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
