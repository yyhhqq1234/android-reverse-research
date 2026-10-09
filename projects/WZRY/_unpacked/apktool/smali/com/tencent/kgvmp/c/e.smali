.class public Lcom/tencent/kgvmp/c/e;
.super Ljava/lang/Object;


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/tencent/kgvmp/c/h;

.field public e:Lcom/tencent/kgvmp/c/g;

.field public f:Lcom/tencent/kgvmp/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/c/e;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/c/e;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    :try_start_0
    const-string v0, "model"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/kgvmp/c/e;->b:Ljava/lang/String;

    const-string v0, "brand"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/kgvmp/c/e;->c:Ljava/lang/String;

    const-string v0, "available"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/kgvmp/c/e;->a:Z

    new-instance v0, Lcom/tencent/kgvmp/c/h;

    invoke-direct {v0, p0}, Lcom/tencent/kgvmp/c/h;-><init>(Lcom/tencent/kgvmp/c/e;)V

    iput-object v0, p0, Lcom/tencent/kgvmp/c/e;->d:Lcom/tencent/kgvmp/c/h;

    iget-object v0, p0, Lcom/tencent/kgvmp/c/e;->d:Lcom/tencent/kgvmp/c/h;

    const-string v1, "prop"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/kgvmp/c/h;->a(Lorg/json/JSONObject;)Z

    new-instance v0, Lcom/tencent/kgvmp/c/g;

    invoke-direct {v0, p0}, Lcom/tencent/kgvmp/c/g;-><init>(Lcom/tencent/kgvmp/c/e;)V

    iput-object v0, p0, Lcom/tencent/kgvmp/c/e;->e:Lcom/tencent/kgvmp/c/g;

    iget-object v0, p0, Lcom/tencent/kgvmp/c/e;->e:Lcom/tencent/kgvmp/c/g;

    const-string v1, "package"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/kgvmp/c/g;->a(Lorg/json/JSONObject;)Z

    new-instance v0, Lcom/tencent/kgvmp/c/f;

    invoke-direct {v0, p0}, Lcom/tencent/kgvmp/c/f;-><init>(Lcom/tencent/kgvmp/c/e;)V

    iput-object v0, p0, Lcom/tencent/kgvmp/c/e;->f:Lcom/tencent/kgvmp/c/f;

    iget-object v0, p0, Lcom/tencent/kgvmp/c/e;->f:Lcom/tencent/kgvmp/c/f;

    const-string v1, "hardware"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/kgvmp/c/f;->a(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/tencent/kgvmp/c/e;->g:Ljava/lang/String;

    const-string v1, "DeviceCheckConfig:parseJson: exception."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
