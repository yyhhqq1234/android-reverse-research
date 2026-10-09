.class public Lcom/tencent/android/tpush/stat/event/a;
.super Lcom/tencent/android/tpush/stat/event/d;
.source "ProGuard"


# instance fields
.field protected a:Lcom/tencent/android/tpush/stat/event/b;

.field private k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;JJ)V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/tencent/android/tpush/stat/event/d;-><init>(Landroid/content/Context;IJ)V

    .line 75
    new-instance v0, Lcom/tencent/android/tpush/stat/event/b;

    invoke-direct {v0}, Lcom/tencent/android/tpush/stat/event/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/a;->a:Lcom/tencent/android/tpush/stat/event/b;

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/android/tpush/stat/event/a;->k:J

    .line 127
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/event/a;->a:Lcom/tencent/android/tpush/stat/event/b;

    iput-object p3, v0, Lcom/tencent/android/tpush/stat/event/b;->a:Ljava/lang/String;

    .line 128
    iput-wide p6, p0, Lcom/tencent/android/tpush/stat/event/a;->i:J

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0, p1, p4}, Lcom/tencent/android/tpush/stat/event/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/tencent/android/tpush/stat/event/b;

    invoke-direct {v0}, Lcom/tencent/android/tpush/stat/event/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/a;->a:Lcom/tencent/android/tpush/stat/event/b;

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/android/tpush/stat/event/a;->k:J

    .line 119
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/event/a;->a:Lcom/tencent/android/tpush/stat/event/b;

    iput-object p2, v0, Lcom/tencent/android/tpush/stat/event/b;->a:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/event/a;->a:Lcom/tencent/android/tpush/stat/event/b;

    iput-object p3, v0, Lcom/tencent/android/tpush/stat/event/b;->c:Lorg/json/JSONObject;

    .line 121
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/event/a;->a:Lcom/tencent/android/tpush/stat/event/b;

    iput-boolean p5, v0, Lcom/tencent/android/tpush/stat/event/b;->d:Z

    .line 122
    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/android/tpush/stat/event/b;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/event/a;->a:Lcom/tencent/android/tpush/stat/event/b;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    .line 143
    const-string v0, "ei"

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/event/a;->a:Lcom/tencent/android/tpush/stat/event/b;

    iget-object v1, v1, Lcom/tencent/android/tpush/stat/event/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    iget-wide v0, p0, Lcom/tencent/android/tpush/stat/event/a;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 145
    const-string v0, "du"

    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/event/a;->k:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/event/a;->a:Lcom/tencent/android/tpush/stat/event/b;

    iget-object v0, v0, Lcom/tencent/android/tpush/stat/event/b;->b:Lorg/json/JSONArray;

    if-nez v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/event/a;->a:Lcom/tencent/android/tpush/stat/event/b;

    iget-boolean v0, v0, Lcom/tencent/android/tpush/stat/event/b;->d:Z

    if-eqz v0, :cond_1

    .line 149
    const-string v0, "kv2"

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/event/a;->a:Lcom/tencent/android/tpush/stat/event/b;

    iget-object v1, v1, Lcom/tencent/android/tpush/stat/event/b;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 151
    :cond_1
    const-string v0, "kv"

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/event/a;->a:Lcom/tencent/android/tpush/stat/event/b;

    iget-object v1, v1, Lcom/tencent/android/tpush/stat/event/b;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 154
    :cond_2
    const-string v0, "ar"

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/event/a;->a:Lcom/tencent/android/tpush/stat/event/b;

    iget-object v1, v1, Lcom/tencent/android/tpush/stat/event/b;->b:Lorg/json/JSONArray;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public b()Lcom/tencent/android/tpush/stat/event/EventType;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/tencent/android/tpush/stat/event/EventType;->CUSTOM:Lcom/tencent/android/tpush/stat/event/EventType;

    return-object v0
.end method
