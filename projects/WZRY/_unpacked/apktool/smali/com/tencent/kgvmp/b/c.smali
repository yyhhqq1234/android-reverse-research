.class public Lcom/tencent/kgvmp/b/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/tencent/kgvmp/report/f;

.field private c:Lcom/tencent/kgvmp/c/i;

.field private d:Z

.field private e:Lcom/tencent/vmp/GCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/kgvmp/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/kgvmp/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    iput-object v0, p0, Lcom/tencent/kgvmp/b/c;->b:Lcom/tencent/kgvmp/report/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/kgvmp/b/c;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/kgvmp/b/c;)Lcom/tencent/kgvmp/report/f;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/b/c;->b:Lcom/tencent/kgvmp/report/f;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/kgvmp/b/c;Lcom/tencent/kgvmp/report/f;)Lcom/tencent/kgvmp/report/f;
    .locals 0

    iput-object p1, p0, Lcom/tencent/kgvmp/b/c;->b:Lcom/tencent/kgvmp/report/f;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/kgvmp/b/c;Lorg/json/JSONObject;)Lcom/tencent/kgvmp/report/f;
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/b/c;->a(Lorg/json/JSONObject;)Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Lcom/tencent/kgvmp/report/f;
    .locals 2

    :try_start_0
    const-string v0, "available"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "support2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/tencent/kgvmp/c/i;

    invoke-direct {v1}, Lcom/tencent/kgvmp/c/i;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/kgvmp/c/i;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Lcom/tencent/kgvmp/c/i;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/kgvmp/b/c;->d:Z

    iput-object v1, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/report/f;->ERROR_FPS_STRATEGY_NOT_AVAILABLE:Lcom/tencent/kgvmp/report/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/tencent/kgvmp/b/c;->a:Ljava/lang/String;

    const-string v1, "check fps strategy: config\'s json data parse failed."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/report/f;->ERROR_CONFIG_JSON_SYNTAX_EXCEPTION:Lcom/tencent/kgvmp/report/f;

    goto :goto_0
.end method

.method private b(ILjava/util/ArrayList;)F
    .locals 12

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v1, v1, Lcom/tencent/kgvmp/c/i;->c:I

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v1, v1, Lcom/tencent/kgvmp/c/i;->d:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v0, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v0, v0, Lcom/tencent/kgvmp/c/i;->e:I

    div-int v10, v9, v0

    const/4 v2, 0x0

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v0, v0, Lcom/tencent/kgvmp/c/i;->e:I

    add-int/lit8 v0, v0, 0x1

    if-ge v1, v0, :cond_5

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v0, v0, Lcom/tencent/kgvmp/c/i;->e:I

    if-ne v1, v0, :cond_4

    const/4 v0, 0x0

    move v8, v0

    :goto_3
    if-ge v2, v9, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v11, v0, v0

    add-float/2addr v6, v11

    add-float/2addr v5, v0

    add-float/2addr v4, v0

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_3

    :cond_2
    move v0, v7

    :goto_4
    int-to-float v7, v0

    div-float/2addr v5, v7

    int-to-float v0, v0

    div-float v0, v6, v0

    mul-float/2addr v5, v5

    sub-float/2addr v0, v5

    iget-object v5, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v5, v5, Lcom/tencent/kgvmp/c/i;->f:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v5, v5, Lcom/tencent/kgvmp/c/i;->g:F

    iget-object v6, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v6, v6, Lcom/tencent/kgvmp/c/i;->f:I

    int-to-float v6, v6

    sub-float/2addr v0, v6

    mul-float/2addr v0, v5

    iget-object v5, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v5, v5, Lcom/tencent/kgvmp/c/i;->h:I

    int-to-float v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float/2addr v3, v0

    :cond_3
    const/4 v6, 0x0

    const/4 v5, 0x0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    move v8, v0

    :goto_5
    if-ge v8, v10, :cond_8

    if-ge v2, v9, :cond_8

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v11, v0, v0

    add-float/2addr v6, v11

    add-float/2addr v5, v0

    add-float/2addr v4, v0

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    iget-object v1, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v1, v1, Lcom/tencent/kgvmp/c/i;->i:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    iget-object v0, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v0, v0, Lcom/tencent/kgvmp/c/i;->j:I

    int-to-float v0, v0

    :goto_6
    iget-object v1, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v1, v1, Lcom/tencent/kgvmp/c/i;->p:I

    int-to-float v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v1, v1, Lcom/tencent/kgvmp/c/i;->q:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_6
    iget-object v1, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v1, v1, Lcom/tencent/kgvmp/c/i;->i:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_7

    iget-object v1, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v1, v1, Lcom/tencent/kgvmp/c/i;->k:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_7

    iget-object v1, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v1, v1, Lcom/tencent/kgvmp/c/i;->l:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v1, v1, Lcom/tencent/kgvmp/c/i;->m:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v1, v1, Lcom/tencent/kgvmp/c/i;->n:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v1, v1, Lcom/tencent/kgvmp/c/i;->o:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_6

    :cond_8
    move v0, v7

    goto/16 :goto_4
.end method

.method static synthetic b(Lcom/tencent/kgvmp/b/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/kgvmp/b/c;->d:Z

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/kgvmp/b/d;

    invoke-direct {v1, p0}, Lcom/tencent/kgvmp/b/d;-><init>(Lcom/tencent/kgvmp/b/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/ArrayList;)V
    .locals 8

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v0, Lcom/tencent/kgvmp/b/c;->a:Ljava/lang/String;

    const-string v3, "FpsStrategyHelper: start to check fps score. "

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v0, v0, Lcom/tencent/kgvmp/c/i;->b:I

    if-ge p1, v0, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/b/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FpsStrategyHelper:checkFpsScore: fps count is too less. size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x447a0000    # 1000.0f

    :goto_0
    iget-object v4, p0, Lcom/tencent/kgvmp/b/c;->c:Lcom/tencent/kgvmp/c/i;

    iget v4, v4, Lcom/tencent/kgvmp/c/i;->r:I

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/tencent/kgvmp/b/c;->e:Lcom/tencent/vmp/GCallback;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/kgvmp/b/c;->e:Lcom/tencent/vmp/GCallback;

    invoke-interface {v4, v1}, Lcom/tencent/vmp/GCallback;->changeSpecialEffects(I)V

    :cond_0
    :goto_1
    sget-object v4, Lcom/tencent/kgvmp/b/c;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FpsStrategyHelper: fps score: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , fps level: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "fps_score"

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fps_level"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/tencent/kgvmp/report/j;->f(Ljava/util/HashMap;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/kgvmp/b/c;->b(ILjava/util/ArrayList;)F

    move-result v0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public a(Lcom/tencent/vmp/GCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/kgvmp/b/c;->e:Lcom/tencent/vmp/GCallback;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/kgvmp/b/c;->d:Z

    return v0
.end method

.method public b()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/kgvmp/b/c;->d()V

    return-void
.end method
