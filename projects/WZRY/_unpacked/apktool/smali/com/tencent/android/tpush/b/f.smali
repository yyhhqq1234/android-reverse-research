.class public Lcom/tencent/android/tpush/b/f;
.super Lcom/tencent/android/tpush/b/a;
.source "ProGuard"


# instance fields
.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:Lcom/tencent/android/tpush/b/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/b/a;-><init>(Ljava/lang/String;)V

    .line 84
    iput v1, p0, Lcom/tencent/android/tpush/b/f;->d:I

    .line 86
    iput v2, p0, Lcom/tencent/android/tpush/b/f;->e:I

    .line 88
    iput v2, p0, Lcom/tencent/android/tpush/b/f;->f:I

    .line 90
    iput v2, p0, Lcom/tencent/android/tpush/b/f;->g:I

    .line 92
    iput v1, p0, Lcom/tencent/android/tpush/b/f;->h:I

    .line 94
    iput v1, p0, Lcom/tencent/android/tpush/b/f;->i:I

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/b/f;->j:Ljava/lang/String;

    .line 98
    iput v2, p0, Lcom/tencent/android/tpush/b/f;->k:I

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/b/f;->l:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/b/f;->m:Ljava/lang/String;

    .line 104
    iput v1, p0, Lcom/tencent/android/tpush/b/f;->n:I

    .line 106
    iput v1, p0, Lcom/tencent/android/tpush/b/f;->o:I

    .line 108
    new-instance v0, Lcom/tencent/android/tpush/b/g;

    invoke-direct {v0}, Lcom/tencent/android/tpush/b/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/b/f;->p:Lcom/tencent/android/tpush/b/g;

    .line 20
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method protected d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 112
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->a:Lorg/json/JSONObject;

    const-string v1, "builder_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/b/f;->d:I

    .line 113
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->a:Lorg/json/JSONObject;

    const-string v1, "ring"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/b/f;->e:I

    .line 114
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->a:Lorg/json/JSONObject;

    const-string v1, "ring_raw"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/b/f;->l:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->a:Lorg/json/JSONObject;

    const-string v1, "icon_res"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/b/f;->j:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->a:Lorg/json/JSONObject;

    const-string v1, "small_icon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/b/f;->m:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->a:Lorg/json/JSONObject;

    const-string v1, "lights"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/b/f;->k:I

    .line 118
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->a:Lorg/json/JSONObject;

    const-string/jumbo v1, "vibrate"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/b/f;->f:I

    .line 119
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->a:Lorg/json/JSONObject;

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/b/f;->i:I

    .line 120
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->a:Lorg/json/JSONObject;

    const-string v1, "icon_type"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/b/f;->n:I

    .line 121
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->a:Lorg/json/JSONObject;

    const-string v1, "n_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/b/f;->h:I

    .line 122
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->a:Lorg/json/JSONObject;

    const-string/jumbo v1, "style_id"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/b/f;->o:I

    .line 123
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->a:Lorg/json/JSONObject;

    const-string v1, "clearable"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->a:Lorg/json/JSONObject;

    const-string v1, "clearable"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/b/f;->g:I

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->a:Lorg/json/JSONObject;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->p:Lcom/tencent/android/tpush/b/g;

    iget-object v1, p0, Lcom/tencent/android/tpush/b/f;->a:Lorg/json/JSONObject;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/b/g;->a(Lcom/tencent/android/tpush/b/g;Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void

    .line 126
    :cond_1
    iput v2, p0, Lcom/tencent/android/tpush/b/f;->g:I

    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/tencent/android/tpush/b/f;->d:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/tencent/android/tpush/b/f;->e:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/tencent/android/tpush/b/f;->f:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/tencent/android/tpush/b/f;->g:I

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/tencent/android/tpush/b/f;->h:I

    return v0
.end method

.method public m()Lcom/tencent/android/tpush/b/g;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->p:Lcom/tencent/android/tpush/b/g;

    return-object v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/tencent/android/tpush/b/f;->i:I

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/tencent/android/tpush/b/f;->k:I

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->l:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->j:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tencent/android/tpush/b/f;->m:Ljava/lang/String;

    return-object v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/tencent/android/tpush/b/f;->n:I

    return v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/tencent/android/tpush/b/f;->o:I

    return v0
.end method
