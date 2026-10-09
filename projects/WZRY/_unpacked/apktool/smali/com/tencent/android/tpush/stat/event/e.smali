.class public Lcom/tencent/android/tpush/stat/event/e;
.super Lcom/tencent/android/tpush/stat/event/d;
.source "ProGuard"


# instance fields
.field a:Ljava/lang/Long;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field public m:J

.field public n:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;J)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 34
    invoke-direct {p0, p1, p4, p6, p7}, Lcom/tencent/android/tpush/stat/event/d;-><init>(Landroid/content/Context;IJ)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/e;->a:Ljava/lang/Long;

    .line 29
    iput-wide v2, p0, Lcom/tencent/android/tpush/stat/event/e;->m:J

    .line 30
    iput-wide v2, p0, Lcom/tencent/android/tpush/stat/event/e;->n:J

    .line 35
    iput-object p2, p0, Lcom/tencent/android/tpush/stat/event/e;->l:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/tencent/android/tpush/stat/event/e;->k:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/tencent/android/tpush/stat/event/e;->a:Ljava/lang/Long;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 51
    const-string v0, "pi"

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/event/e;->k:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/common/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "rf"

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/event/e;->l:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/common/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/event/e;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "du"

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/event/e;->a:Ljava/lang/Long;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    :cond_0
    iget-wide v0, p0, Lcom/tencent/android/tpush/stat/event/e;->m:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 57
    const-string v0, "msgId"

    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/event/e;->m:J

    invoke-static {p1, v0, v2, v3}, Lcom/tencent/android/tpush/common/t;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 59
    :cond_1
    iget-wide v0, p0, Lcom/tencent/android/tpush/stat/event/e;->n:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 60
    const-string v0, "busiMsgId"

    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/event/e;->n:J

    invoke-static {p1, v0, v2, v3}, Lcom/tencent/android/tpush/common/t;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 63
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/tencent/android/tpush/stat/event/EventType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/tencent/android/tpush/stat/event/EventType;->PAGE_VIEW:Lcom/tencent/android/tpush/stat/event/EventType;

    return-object v0
.end method
