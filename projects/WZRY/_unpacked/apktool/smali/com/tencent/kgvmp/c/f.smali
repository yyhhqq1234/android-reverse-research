.class public Lcom/tencent/kgvmp/c/f;
.super Ljava/lang/Object;


# instance fields
.field public a:[Ljava/lang/String;

.field public b:[Ljava/lang/String;

.field final synthetic c:Lcom/tencent/kgvmp/c/e;


# direct methods
.method public constructor <init>(Lcom/tencent/kgvmp/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/kgvmp/c/f;->c:Lcom/tencent/kgvmp/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "cpu"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/kgvmp/c/f;->a:[Ljava/lang/String;

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/tencent/kgvmp/c/f;->a:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "gpu"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/kgvmp/c/f;->b:[Ljava/lang/String;

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/tencent/kgvmp/c/f;->b:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/tencent/kgvmp/c/e;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Hardware:parseJson: exception."

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_2
.end method
