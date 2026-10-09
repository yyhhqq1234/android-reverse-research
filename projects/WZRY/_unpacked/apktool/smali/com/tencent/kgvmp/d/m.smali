.class public Lcom/tencent/kgvmp/d/m;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Landroid/net/LocalSocket;

.field private f:Ljava/io/InputStream;

.field private g:Ljava/io/OutputStream;

.field private h:Ljava/io/PrintWriter;

.field private i:Ljava/lang/Thread;

.field private j:Lcom/tencent/kgvmp/VmpCallback;

.field private k:Lcom/tencent/vmp/GCallback;

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/d/m;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/tencent/kgvmp/d/m;->d:Z

    iput-object v0, p0, Lcom/tencent/kgvmp/d/m;->e:Landroid/net/LocalSocket;

    iput-object v0, p0, Lcom/tencent/kgvmp/d/m;->f:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/tencent/kgvmp/d/m;->g:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/tencent/kgvmp/d/m;->h:Ljava/io/PrintWriter;

    iput-object v0, p0, Lcom/tencent/kgvmp/d/m;->j:Lcom/tencent/kgvmp/VmpCallback;

    iput-object v0, p0, Lcom/tencent/kgvmp/d/m;->k:Lcom/tencent/vmp/GCallback;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/kgvmp/d/m;->l:I

    iput v1, p0, Lcom/tencent/kgvmp/d/m;->m:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/kgvmp/d/m;->n:Ljava/lang/String;

    iput p1, p0, Lcom/tencent/kgvmp/d/m;->b:I

    if-nez p1, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/kgvmp/d/m;->c:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/tencent/kgvmp/a/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/kgvmp/d/m;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/a/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/kgvmp/d/m;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/tencent/kgvmp/d/m;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .locals 0

    iput-object p1, p0, Lcom/tencent/kgvmp/d/m;->e:Landroid/net/LocalSocket;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/kgvmp/d/m;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    iput-object p1, p0, Lcom/tencent/kgvmp/d/m;->f:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/kgvmp/d/m;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    iput-object p1, p0, Lcom/tencent/kgvmp/d/m;->g:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/kgvmp/d/m;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    .locals 0

    iput-object p1, p0, Lcom/tencent/kgvmp/d/m;->h:Ljava/io/PrintWriter;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/kgvmp/d/m;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/d/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/kgvmp/d/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/d/m;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->s()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/kgvmp/d/m;->l:I

    if-ne v0, p2, :cond_2

    sget-object v0, Lcom/tencent/kgvmp/d/m;->a:Ljava/lang/String;

    const-string/jumbo v1, "vivo2_socket: frequecy level is same to last."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    sget-object v0, Lcom/tencent/kgvmp/d/m;->a:Ljava/lang/String;

    const-string/jumbo v1, "vivo2_socket: frequecy level is 0, do not need notify."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/kgvmp/d/m;->j:Lcom/tencent/kgvmp/VmpCallback;

    if-eqz v0, :cond_4

    iput p2, p0, Lcom/tencent/kgvmp/d/m;->l:I

    const-string/jumbo v0, "{"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/a/g;->FREQUENCY_SIGNAL:Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/g;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/a/g;->FREQUENCY_LEVEL:Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/g;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/kgvmp/d/m;->j:Lcom/tencent/kgvmp/VmpCallback;

    invoke-interface {v1, v0}, Lcom/tencent/kgvmp/VmpCallback;->notifySystemInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/kgvmp/d/m;->k:Lcom/tencent/vmp/GCallback;

    if-eqz v0, :cond_0

    iput p2, p0, Lcom/tencent/kgvmp/d/m;->l:I

    iget-object v0, p0, Lcom/tencent/kgvmp/d/m;->k:Lcom/tencent/vmp/GCallback;

    invoke-interface {v0, p2}, Lcom/tencent/vmp/GCallback;->changeSpecialEffects(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/tencent/kgvmp/d/m;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/kgvmp/d/m;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/kgvmp/d/m;)Landroid/net/LocalSocket;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/d/m;->e:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/d/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/tencent/kgvmp/d/m;->b:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/d/m;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/kgvmp/d/m;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/d/m;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/d/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VmpSocketClient:parseContent: socket type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/kgvmp/d/m;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    sget-object v1, Lcom/tencent/kgvmp/d/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vivo2_socket: content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "result"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "content"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "1"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "1"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/kgvmp/d/m;->n:Ljava/lang/String;

    sget-object v4, Lcom/tencent/kgvmp/a/e;->SOC_TEMP:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v4}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/kgvmp/d/m;->n:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/kgvmp/report/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v4, "2"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "2"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/tencent/kgvmp/d/m;->a(I)I

    move-result v5

    invoke-static {v4}, Lcom/tencent/kgvmp/report/e;->l(Ljava/lang/String;)V

    sget-object v6, Lcom/tencent/kgvmp/a/e;->VENDOR_LEVEL:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v6}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/tencent/kgvmp/a/g;->FREQUENCY_SIGNAL:Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v4}, Lcom/tencent/kgvmp/a/g;->getKeyStr()Ljava/lang/String;

    move-result-object v4

    const-string v6, "2"

    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/tencent/kgvmp/a/g;->FREQUENCY_LEVEL:Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v4}, Lcom/tencent/kgvmp/a/g;->getKeyStr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "2"

    invoke-direct {p0, v4, v5}, Lcom/tencent/kgvmp/d/m;->a(Ljava/lang/String;I)V

    move v1, v0

    :cond_1
    const-string v4, "5"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "5"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/tencent/kgvmp/d/m;->f(Ljava/lang/String;)V

    sget-object v5, Lcom/tencent/kgvmp/a/g;->STRATEGY_SUPPORT:Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v5}, Lcom/tencent/kgvmp/a/g;->getKeyStr()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "6"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "6"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tencent/kgvmp/d/m;->g(Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/kgvmp/a/g;->SCENE_SUPPORT:Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v4}, Lcom/tencent/kgvmp/a/g;->getKeyStr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    move v1, v0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tencent/kgvmp/a/g;->DEVICE_TEMP:Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/g;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/kgvmp/d/m;->n:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/tencent/kgvmp/report/j;->e(Ljava/util/HashMap;)V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/tencent/kgvmp/d/m;->a:Ljava/lang/String;

    const-string/jumbo v4, "vivo2_socket: parse json exception."

    invoke-static {v3, v4}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "result"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/kgvmp/d/m;->m:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_3

    iget v3, p0, Lcom/tencent/kgvmp/d/m;->m:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tencent/kgvmp/d/m;->m:I

    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "where"

    const-string v5, "callback"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "msg"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/tencent/kgvmp/report/j;->i(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v0, Lcom/tencent/kgvmp/d/m;->a:Ljava/lang/String;

    const-string/jumbo v3, "vivo2_socket: vmp callback exception report exception. "

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/kgvmp/d/m;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/m;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/kgvmp/d/m;)I
    .locals 1

    iget v0, p0, Lcom/tencent/kgvmp/d/m;->b:I

    return v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    sget-object v1, Lcom/tencent/kgvmp/d/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kog_socket: content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "result"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "content"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "2"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "2"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/kgvmp/d/m;->n:Ljava/lang/String;

    sget-object v4, Lcom/tencent/kgvmp/a/e;->SOC_TEMP:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v4}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/kgvmp/d/m;->n:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/kgvmp/report/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v4, "1"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "1"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/tencent/kgvmp/a/g;->FREQUENCY_SIGNAL:Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v5}, Lcom/tencent/kgvmp/a/g;->getKeyStr()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "4"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "4"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/kgvmp/report/e;->l(Ljava/lang/String;)V

    sget-object v6, Lcom/tencent/kgvmp/a/g;->FREQUENCY_LEVEL:Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v6}, Lcom/tencent/kgvmp/a/g;->getKeyStr()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/tencent/kgvmp/a/e;->VENDOR_LEVEL:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v6}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/tencent/kgvmp/d/m;->a(Ljava/lang/String;I)V

    :goto_0
    move v1, v0

    :cond_1
    const-string v4, "5"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "5"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/tencent/kgvmp/d/m;->f(Ljava/lang/String;)V

    sget-object v5, Lcom/tencent/kgvmp/a/g;->STRATEGY_SUPPORT:Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v5}, Lcom/tencent/kgvmp/a/g;->getKeyStr()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "6"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "6"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/tencent/kgvmp/d/m;->g(Ljava/lang/String;)V

    sget-object v5, Lcom/tencent/kgvmp/a/g;->SCENE_SUPPORT:Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v5}, Lcom/tencent/kgvmp/a/g;->getKeyStr()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v1, v0

    :cond_3
    const-string v4, "7"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "7"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-1"

    sget-object v5, Lcom/tencent/kgvmp/a/g;->COMMOND_ID:Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v5}, Lcom/tencent/kgvmp/a/g;->getKeyStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "8"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "8"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tencent/kgvmp/a/g;->COMMOND_RESULT:Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v4}, Lcom/tencent/kgvmp/a/g;->getKeyStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    move v1, v0

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/tencent/kgvmp/a/g;->DEVICE_TEMP:Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/g;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/kgvmp/d/m;->n:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/tencent/kgvmp/report/j;->e(Ljava/util/HashMap;)V

    :cond_6
    return-void

    :cond_7
    :try_start_1
    invoke-direct {p0, v4}, Lcom/tencent/kgvmp/d/m;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/tencent/kgvmp/d/m;->a:Ljava/lang/String;

    const-string v4, "VmpHandler:kog_socket: parse vendor info to json exception"

    invoke-static {v3, v4}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "result"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/kgvmp/d/m;->m:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_5

    iget v3, p0, Lcom/tencent/kgvmp/d/m;->m:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tencent/kgvmp/d/m;->m:I

    :try_start_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "where"

    const-string v5, "callback"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "msg"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/tencent/kgvmp/report/j;->i(Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v0, Lcom/tencent/kgvmp/d/m;->a:Ljava/lang/String;

    const-string v3, "kog_socket: vmp callback exception report exception. "

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method static synthetic e(Lcom/tencent/kgvmp/d/m;)Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/d/m;->g:Ljava/io/OutputStream;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->s()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/kgvmp/d/m;->j:Lcom/tencent/kgvmp/VmpCallback;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/tencent/kgvmp/d/m;->l:I

    if-eq v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"1\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/kgvmp/d/m;->j:Lcom/tencent/kgvmp/VmpCallback;

    invoke-interface {v1, v0}, Lcom/tencent/kgvmp/VmpCallback;->notifySystemInfo(Ljava/lang/String;)V

    :cond_2
    iput v2, p0, Lcom/tencent/kgvmp/d/m;->l:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/kgvmp/d/m;->k:Lcom/tencent/vmp/GCallback;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/kgvmp/d/m;->l:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/tencent/kgvmp/d/m;->k:Lcom/tencent/vmp/GCallback;

    invoke-interface {v0, v2}, Lcom/tencent/vmp/GCallback;->changeSpecialEffects(I)V

    :cond_4
    iput v2, p0, Lcom/tencent/kgvmp/d/m;->l:I

    goto :goto_0
.end method

.method static synthetic f(Lcom/tencent/kgvmp/d/m;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/d/m;->f:Ljava/io/InputStream;

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v4, v3

    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :pswitch_0
    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v1

    goto :goto_1

    :pswitch_1
    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v2

    goto :goto_1

    :pswitch_2
    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_3
    const-string v7, "4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_4
    const-string v7, "5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :pswitch_5
    const-string v7, "6"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :pswitch_6
    const-string v7, "7"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :pswitch_7
    const-string v7, "8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :pswitch_8
    invoke-static {v2}, Lcom/tencent/kgvmp/report/e;->a(I)V

    goto :goto_2

    :pswitch_9
    invoke-static {v2}, Lcom/tencent/kgvmp/report/e;->b(I)V

    goto :goto_2

    :pswitch_a
    invoke-static {v2}, Lcom/tencent/kgvmp/report/e;->c(I)V

    goto :goto_2

    :pswitch_b
    invoke-static {v2}, Lcom/tencent/kgvmp/report/e;->d(I)V

    goto :goto_2

    :pswitch_c
    invoke-static {v2}, Lcom/tencent/kgvmp/report/e;->e(I)V

    goto :goto_2

    :pswitch_d
    invoke-static {v2}, Lcom/tencent/kgvmp/report/e;->f(I)V

    goto :goto_2

    :pswitch_e
    invoke-static {v2}, Lcom/tencent/kgvmp/report/e;->g(I)V

    goto :goto_2

    :pswitch_f
    invoke-static {v2}, Lcom/tencent/kgvmp/report/e;->h(I)V

    goto :goto_2

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private g(Ljava/lang/String;)V
    .locals 4

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/tencent/kgvmp/report/e;->t(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/kgvmp/d/n;

    invoke-direct {v1, p0}, Lcom/tencent/kgvmp/d/n;-><init>(Lcom/tencent/kgvmp/d/m;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/kgvmp/d/m;->i:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/tencent/kgvmp/d/m;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Lcom/tencent/kgvmp/VmpCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/kgvmp/d/m;->j:Lcom/tencent/kgvmp/VmpCallback;

    return-void
.end method

.method public a(Lcom/tencent/vmp/GCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/kgvmp/d/m;->k:Lcom/tencent/vmp/GCallback;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/m;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/kgvmp/d/m;->g:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/kgvmp/d/m;->g:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
