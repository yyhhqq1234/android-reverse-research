.class public Lcom/tencent/kgvmp/b/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/kgvmp/b/e;Ljava/lang/String;)Lcom/tencent/kgvmp/report/f;
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/b/e;->a(Ljava/lang/String;)Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/tencent/kgvmp/report/f;
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/b/e;->a:Ljava/lang/String;

    const-string v1, "checkOptCfg: getConfigFromCDN failed."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->DOWNLOAD_CONFIG_EXCEPTION:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/b/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOptCfg: config: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "ret"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    move-object v3, v0

    :goto_1
    if-nez v3, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/report/f;->ERROR_CONFIG_JSON_SYNTAX_EXCEPTION:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    sget-object v1, Lcom/tencent/kgvmp/b/e;->a:Ljava/lang/String;

    const-string v3, "checkOptCfg: optcfg is ret is not -1."

    invoke-static {v1, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    move-object v3, v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    sget-object v0, Lcom/tencent/kgvmp/report/f;->ERROR_OPTIMIZING_CONFIG_NOT_AVAILABL:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_2
    const-string v0, ""

    :try_start_2
    const-string v1, "gamekey"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v1, "gamecfg"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_4

    :cond_4
    invoke-static {v1}, Lcom/tencent/kgvmp/report/e;->y(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/b/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOptCfg: optStr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/tencent/kgvmp/b/e;->a:Ljava/lang/String;

    const-string v1, "checkOptCfg: config\'s json data parse failed."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->ERROR_CONFIG_JSON_SYNTAX_EXCEPTION:Lcom/tencent/kgvmp/report/f;

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_2
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/b/e;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/kgvmp/b/f;

    invoke-direct {v1, p0}, Lcom/tencent/kgvmp/b/f;-><init>(Lcom/tencent/kgvmp/b/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
