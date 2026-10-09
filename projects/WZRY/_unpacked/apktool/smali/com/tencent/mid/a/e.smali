.class public Lcom/tencent/mid/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mid/a/e;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mid/a/e;->b:Lorg/json/JSONObject;

    iput p1, p0, Lcom/tencent/mid/a/e;->a:I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mid/a/e;->b:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mid/a/e;->a:I

    return v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mid/a/e;->b:Lorg/json/JSONObject;

    return-object v0
.end method
