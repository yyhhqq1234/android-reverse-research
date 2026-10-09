.class public Lcom/tencent/kgvmp/c/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/tencent/kgvmp/c/j;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/kgvmp/c/c;->f:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/kgvmp/c/c;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/tencent/kgvmp/c/l;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/tencent/kgvmp/c/l;->a:[Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/kgvmp/c/c;->d:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/tencent/kgvmp/c/c;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/tencent/kgvmp/c/l;->b:[Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/kgvmp/c/c;->e:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/tencent/kgvmp/c/c;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/tencent/kgvmp/c/l;->c:[Ljava/lang/String;

    iget v2, p0, Lcom/tencent/kgvmp/c/c;->f:I

    invoke-direct {p0, v1, v2}, Lcom/tencent/kgvmp/c/c;->a([Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    const-string v1, "CloudChecker: user in white config. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a([Ljava/lang/String;I)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "ALL"

    invoke-static {p1, v2}, Lcom/tencent/kgvmp/f/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, p1, v2

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-ne v5, v0, :cond_2

    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, p2, :cond_0

    :cond_2
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-lt p2, v6, :cond_3

    if-le p2, v4, :cond_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/tencent/kgvmp/f/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ALL"

    invoke-static {p1, v0}, Lcom/tencent/kgvmp/f/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/tencent/kgvmp/c/l;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/tencent/kgvmp/c/l;->a:[Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/kgvmp/c/c;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/tencent/kgvmp/c/l;->b:[Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/kgvmp/c/c;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/tencent/kgvmp/c/l;->c:[Ljava/lang/String;

    iget v2, p0, Lcom/tencent/kgvmp/c/c;->f:I

    invoke-direct {p0, v1, v2}, Lcom/tencent/kgvmp/c/c;->a([Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    const-string v1, "CloudChecker: user is not in black config. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x7d0

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    const-string v1, "ConfigDownload: download config thread start."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/a/b;->j:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/kgvmp/e/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/a/b;->k:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/tencent/kgvmp/report/e;->U()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->i:Ljava/lang/String;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&brand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConfigDownload: cloud config url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/kgvmp/f/f;

    invoke-direct {v1}, Lcom/tencent/kgvmp/f/f;-><init>()V

    invoke-virtual {v1, v4}, Lcom/tencent/kgvmp/f/f;->a(I)V

    invoke-virtual {v1, v4}, Lcom/tencent/kgvmp/f/f;->b(I)V

    invoke-virtual {v1, v0}, Lcom/tencent/kgvmp/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConfigDownload: config content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/tencent/kgvmp/report/f;
    .locals 5

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/kgvmp/f/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    const-string v2, "CloudChecker: start to load local config . "

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/kgvmp/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/kgvmp/f/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    const-string v1, "CloudChecker: local config content is empty or null."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->GET_LOCAL_CONFIG_EMPTY:Lcom/tencent/kgvmp/report/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    const-string v1, "CloudChecker: read local cloud config exception."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->READ_LOCAL_CONFIG_EXCEPTION:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    const-string v1, "CloudChecker: can not find local cloud file. start to download it."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-direct {p0}, Lcom/tencent/kgvmp/c/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/kgvmp/f/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    const-string v1, "CloudChecker: download config content is empty or null."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->DOWNLOAD_CONFIG_EMPTY:Lcom/tencent/kgvmp/report/f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->DOWNLOAD_CONFIG_EXCEPTION:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/tencent/kgvmp/c/j;

    invoke-direct {v1}, Lcom/tencent/kgvmp/c/j;-><init>()V

    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/kgvmp/c/j;->a(Lorg/json/JSONObject;)Z

    move-result v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->O()Ljava/lang/String;

    move-result-object v3

    const-string v4, "apm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "APMKeys"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v3, Lcom/tencent/kgvmp/c/a;

    invoke-direct {v3}, Lcom/tencent/kgvmp/c/a;-><init>()V

    const-string v0, "APMKeys"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/kgvmp/c/a;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v4, v3, Lcom/tencent/kgvmp/c/a;->a:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_3

    invoke-static {v3}, Lcom/tencent/kgvmp/report/e;->a(Lcom/tencent/kgvmp/c/a;)V

    :cond_3
    const-string v3, "limitKey"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/tencent/kgvmp/c/k;

    invoke-direct {v3}, Lcom/tencent/kgvmp/c/k;-><init>()V

    invoke-virtual {v3, v2}, Lcom/tencent/kgvmp/c/k;->a(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v3}, Lcom/tencent/kgvmp/report/e;->a(Lcom/tencent/kgvmp/c/k;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_1
    if-nez v0, :cond_6

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    const-string v1, "CloudChecker: parse json\'s value exception."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->PARSE_JSON_VALUE_EXCEPTION:Lcom/tencent/kgvmp/report/f;

    goto/16 :goto_0

    :cond_5
    :try_start_3
    sget-object v2, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    const-string v3, "CloudChecker: check vendor limited key failed, do not need limited. "

    invoke-static {v2, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    const-string v1, "CloudChecker: file content parse exception."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->PARSE_JSON_CONFIG_EXCEPTION:Lcom/tencent/kgvmp/report/f;

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    const-string v2, "CloudChecker: parse cloud control json success."

    invoke-static {v0, v2}, Lcom/tencent/kgvmp/f/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto/16 :goto_0
.end method

.method public b()Lcom/tencent/kgvmp/c/c;
    .locals 4

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/kgvmp/c/c;->d:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/kgvmp/c/c;->e:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/kgvmp/report/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/kgvmp/c/c;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloudChecker: get qimei exception. qimei: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Lcom/tencent/kgvmp/c/c;
    .locals 3

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    const-string v1, "CloudChecker: globalConfig is null."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-boolean v0, v0, Lcom/tencent/kgvmp/c/j;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->o:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->b(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->a(Z)V

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloudChecker: sdk func open status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->r()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->n:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->a(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    goto :goto_1
.end method

.method public d()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->r()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    const-string v1, "CloudChecker: sdk func is not open in this user."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-boolean v0, v0, Lcom/tencent/kgvmp/c/j;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->s:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->b(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->b(Z)V

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudChecker: callback func open: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->s()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-boolean v0, v0, Lcom/tencent/kgvmp/c/j;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->q:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->b(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->c(Z)V

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudChecker: scene func open: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->t()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-boolean v0, v0, Lcom/tencent/kgvmp/c/j;->e:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->u:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->b(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->d(Z)V

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudChecker: thread func open: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->u()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-boolean v0, v0, Lcom/tencent/kgvmp/c/j;->f:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->y:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->b(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->f(Z)V

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudChecker: light thread func open: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->w()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-boolean v0, v0, Lcom/tencent/kgvmp/c/j;->g:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->A:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->b(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->g(Z)V

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudChecker: user count func open: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->x()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-boolean v0, v0, Lcom/tencent/kgvmp/c/j;->h:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->C:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->b(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->h(Z)V

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudChecker: net latency func open: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->y()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-boolean v0, v0, Lcom/tencent/kgvmp/c/j;->i:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->E:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->b(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->i(Z)V

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudChecker: cpu apply func open: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->z()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-boolean v0, v0, Lcom/tencent/kgvmp/c/j;->j:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->G:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->b(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_8
    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->j(Z)V

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudChecker: gpu apply func open: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->A()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-boolean v0, v0, Lcom/tencent/kgvmp/c/j;->a:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->w:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->b(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_9
    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->e(Z)V

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudChecker: report func open: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->v()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-boolean v0, v0, Lcom/tencent/kgvmp/c/j;->k:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->I:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->b(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->k(Z)V

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudChecker: device check func open: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->B()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-boolean v0, v0, Lcom/tencent/kgvmp/c/j;->l:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->K:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->b(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    :goto_b
    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->l(Z)V

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudChecker: opt config func open: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->C()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-boolean v0, v0, Lcom/tencent/kgvmp/c/j;->m:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->M:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->b(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    if-nez v0, :cond_18

    :goto_c
    invoke-static {v1}, Lcom/tencent/kgvmp/report/e;->m(Z)V

    sget-object v0, Lcom/tencent/kgvmp/c/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloudChecker: fps strategy func open: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->D()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->r:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->a(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->p:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->a(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    goto/16 :goto_2

    :cond_6
    move v0, v2

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->t:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->a(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    goto/16 :goto_3

    :cond_8
    move v0, v2

    goto/16 :goto_4

    :cond_9
    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->x:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->a(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    goto/16 :goto_4

    :cond_a
    move v0, v2

    goto/16 :goto_5

    :cond_b
    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->z:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->a(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    goto/16 :goto_5

    :cond_c
    move v0, v2

    goto/16 :goto_6

    :cond_d
    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->B:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->a(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    goto/16 :goto_6

    :cond_e
    move v0, v2

    goto/16 :goto_7

    :cond_f
    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->D:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->a(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    goto/16 :goto_7

    :cond_10
    move v0, v2

    goto/16 :goto_8

    :cond_11
    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->F:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->a(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    goto/16 :goto_8

    :cond_12
    move v0, v2

    goto/16 :goto_9

    :cond_13
    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->v:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->a(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    goto/16 :goto_9

    :cond_14
    move v0, v2

    goto/16 :goto_a

    :cond_15
    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->H:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->a(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    goto/16 :goto_a

    :cond_16
    move v0, v2

    goto/16 :goto_b

    :cond_17
    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->J:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->a(Lcom/tencent/kgvmp/c/l;)Z

    move-result v0

    goto/16 :goto_b

    :cond_18
    move v1, v2

    goto/16 :goto_c

    :cond_19
    iget-object v0, p0, Lcom/tencent/kgvmp/c/c;->c:Lcom/tencent/kgvmp/c/j;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/j;->L:Lcom/tencent/kgvmp/c/l;

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/c/c;->a(Lcom/tencent/kgvmp/c/l;)Z

    move-result v1

    goto/16 :goto_c
.end method
