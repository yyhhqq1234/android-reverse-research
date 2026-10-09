.class public Lcom/tencent/android/tpush/stat/b/d;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/b/d;->a:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/b/d;->b:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/b/d;->c:Ljava/lang/String;

    .line 44
    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/b/d;->d:Ljava/lang/String;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/stat/b/d;->e:J

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/stat/b/d;->f:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tencent/android/tpush/stat/b/d;
    .locals 4

    .prologue
    .line 87
    new-instance v1, Lcom/tencent/android/tpush/stat/b/d;

    invoke-direct {v1}, Lcom/tencent/android/tpush/stat/b/d;-><init>()V

    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 90
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    const-string v2, "imei"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    const-string v2, "imei"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/android/tpush/stat/b/d;->c(Ljava/lang/String;)V

    .line 94
    :cond_0
    const-string v2, "imsi"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    const-string v2, "imsi"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/android/tpush/stat/b/d;->d(Ljava/lang/String;)V

    .line 97
    :cond_1
    const-string v2, "mac"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 98
    const-string v2, "mac"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/android/tpush/stat/b/d;->e(Ljava/lang/String;)V

    .line 100
    :cond_2
    const-string v2, "mid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 101
    const-string v2, "mid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/android/tpush/stat/b/d;->b(Ljava/lang/String;)V

    .line 106
    :cond_3
    const-string/jumbo v2, "ts"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 107
    const-string/jumbo v2, "ts"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/android/tpush/stat/b/d;->a(J)V

    .line 109
    :cond_4
    const-string/jumbo v2, "ver"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 110
    const-string/jumbo v2, "ver"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/tencent/android/tpush/stat/b/d;->f:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_5
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 151
    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/tencent/android/tpush/stat/b/d;->e:J

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/tencent/android/tpush/stat/b/d;->e:J

    .line 66
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/tencent/android/tpush/stat/b/d;->d:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/d;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method c()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 161
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 163
    :try_start_0
    const-string v0, "imei"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/b/d;->a:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/tencent/android/tpush/stat/b/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "imsi"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/b/d;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/tencent/android/tpush/stat/b/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "mac"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/b/d;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/tencent/android/tpush/stat/b/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "mid"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/b/d;->d:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/tencent/android/tpush/stat/b/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v0, "ts"

    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/b/d;->e:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/tencent/android/tpush/stat/b/d;->a:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/tencent/android/tpush/stat/b/d;->b:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/tencent/android/tpush/stat/b/d;->c:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/b/d;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
