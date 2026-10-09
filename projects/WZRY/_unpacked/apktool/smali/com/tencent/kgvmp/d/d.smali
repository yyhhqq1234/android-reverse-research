.class public Lcom/tencent/kgvmp/d/d;
.super Lcom/tencent/kgvmp/d/a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/tencent/kgvmp/d/d;


# instance fields
.field private c:Lcom/oppo/oiface/OifaceManager;

.field private d:Z

.field private e:I

.field private f:Lcom/tencent/kgvmp/VmpCallback;

.field private g:Lcom/tencent/vmp/GCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/d/d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/kgvmp/d/d;->b:Lcom/tencent/kgvmp/d/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/kgvmp/d/a;-><init>()V

    invoke-static {}, Lcom/oppo/oiface/OifaceManager;->getInstance()Lcom/oppo/oiface/OifaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/kgvmp/d/d;->c:Lcom/oppo/oiface/OifaceManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/kgvmp/d/d;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/kgvmp/d/d;->e:I

    iput-object v1, p0, Lcom/tencent/kgvmp/d/d;->f:Lcom/tencent/kgvmp/VmpCallback;

    iput-object v1, p0, Lcom/tencent/kgvmp/d/d;->g:Lcom/tencent/vmp/GCallback;

    return-void
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

.method static synthetic a(Lcom/tencent/kgvmp/d/d;)I
    .locals 1

    iget v0, p0, Lcom/tencent/kgvmp/d/d;->e:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/kgvmp/d/d;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/d/d;->a(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/kgvmp/d/d;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/d/d;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a()Lcom/tencent/kgvmp/d/d;
    .locals 2

    sget-object v0, Lcom/tencent/kgvmp/d/d;->b:Lcom/tencent/kgvmp/d/d;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/kgvmp/d/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/kgvmp/d/d;->b:Lcom/tencent/kgvmp/d/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/kgvmp/d/d;

    invoke-direct {v0}, Lcom/tencent/kgvmp/d/d;-><init>()V

    sput-object v0, Lcom/tencent/kgvmp/d/d;->b:Lcom/tencent/kgvmp/d/d;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/d/d;->b:Lcom/tencent/kgvmp/d/d;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/tencent/kgvmp/d/d;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/kgvmp/d/d;->e:I

    return p1
.end method

.method private b(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "cpuLevel"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/tencent/kgvmp/d/d;->a:Ljava/lang/String;

    const-string v2, "oppo:callback: get oppo cpuLevel exception."

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/kgvmp/d/d;)Lcom/tencent/kgvmp/VmpCallback;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/d/d;->f:Lcom/tencent/kgvmp/VmpCallback;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/kgvmp/d/d;)Lcom/tencent/vmp/GCallback;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/d/d;->g:Lcom/tencent/vmp/GCallback;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/d/d;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/tencent/kgvmp/VmpCallback;)Lcom/tencent/kgvmp/report/f;
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/d;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/d;->a:Ljava/lang/String;

    const-string v1, "registerGame: oppo sdk is not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->OPPO_MOBILE_NOT_SUPPORT_SDK:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    iput-object p2, p0, Lcom/tencent/kgvmp/d/d;->f:Lcom/tencent/kgvmp/VmpCallback;

    invoke-virtual {p0}, Lcom/tencent/kgvmp/d/d;->c()V

    sget-object v0, Lcom/tencent/kgvmp/d/d;->a:Ljava/lang/String;

    const-string v1, "registerGame: oppo VmpCallback set success."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/tencent/vmp/GCallback;)Lcom/tencent/kgvmp/report/f;
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/d;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/d;->a:Ljava/lang/String;

    const-string v1, "registerGame: oppo sdk is not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->OPPO_MOBILE_NOT_SUPPORT_SDK:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    iput-object p2, p0, Lcom/tencent/kgvmp/d/d;->g:Lcom/tencent/vmp/GCallback;

    invoke-virtual {p0}, Lcom/tencent/kgvmp/d/d;->c()V

    sget-object v0, Lcom/tencent/kgvmp/d/d;->a:Ljava/lang/String;

    const-string v1, "registerGame: oppo GCallback set success."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/tencent/kgvmp/report/f;
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/d;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/d;->a:Ljava/lang/String;

    const-string/jumbo v1, "updateGameInfo: oppo sdk is not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->OPPO_MOBILE_NOT_SUPPORT_SDK:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/d/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateGameInfo: oppo json:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/d/d;->c:Lcom/oppo/oiface/OifaceManager;

    invoke-virtual {v0, p1}, Lcom/oppo/oiface/OifaceManager;->updateGameInfo(Ljava/lang/String;)Z

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0
.end method

.method public b()Lcom/tencent/kgvmp/report/f;
    .locals 2

    iget-object v0, p0, Lcom/tencent/kgvmp/d/d;->c:Lcom/oppo/oiface/OifaceManager;

    invoke-virtual {v0}, Lcom/oppo/oiface/OifaceManager;->getOifaceversion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/d;->a:Ljava/lang/String;

    const-string v1, "oppo sdk is not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->OPPO_MOBILE_NOT_SUPPORT_SDK:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/kgvmp/d/d;->d:Z

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/kgvmp/d/d;->c:Lcom/oppo/oiface/OifaceManager;

    new-instance v1, Lcom/tencent/kgvmp/d/e;

    invoke-direct {v1, p0}, Lcom/tencent/kgvmp/d/e;-><init>(Lcom/tencent/kgvmp/d/d;)V

    invoke-virtual {v0, v1}, Lcom/oppo/oiface/OifaceManager;->systemStatus(Lcom/oppo/oiface/CallBack;)V

    return-void
.end method
