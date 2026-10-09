.class public Lcom/tencent/kgvmp/d/k;
.super Lcom/tencent/kgvmp/d/a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/tencent/kgvmp/d/k;


# instance fields
.field private c:Lcom/vivo/vivogamesdk/VivoGameSDK;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Lcom/tencent/kgvmp/VmpCallback;

.field private i:Lcom/tencent/vmp/GCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/d/k;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/kgvmp/d/k;->b:Lcom/tencent/kgvmp/d/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/kgvmp/d/a;-><init>()V

    invoke-static {}, Lcom/vivo/vivogamesdk/VivoGameSDK;->getInstance()Lcom/vivo/vivogamesdk/VivoGameSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/kgvmp/d/k;->c:Lcom/vivo/vivogamesdk/VivoGameSDK;

    const-string v0, "V1.0.0"

    iput-object v0, p0, Lcom/tencent/kgvmp/d/k;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/kgvmp/d/k;->e:Z

    iput-boolean v1, p0, Lcom/tencent/kgvmp/d/k;->f:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/kgvmp/d/k;->g:I

    iput-object v2, p0, Lcom/tencent/kgvmp/d/k;->h:Lcom/tencent/kgvmp/VmpCallback;

    iput-object v2, p0, Lcom/tencent/kgvmp/d/k;->i:Lcom/tencent/vmp/GCallback;

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

.method static synthetic a(Lcom/tencent/kgvmp/d/k;)I
    .locals 1

    iget v0, p0, Lcom/tencent/kgvmp/d/k;->g:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/kgvmp/d/k;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/d/k;->a(I)I

    move-result v0

    return v0
.end method

.method public static a()Lcom/tencent/kgvmp/d/k;
    .locals 2

    sget-object v0, Lcom/tencent/kgvmp/d/k;->b:Lcom/tencent/kgvmp/d/k;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/kgvmp/d/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/kgvmp/d/k;->b:Lcom/tencent/kgvmp/d/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/kgvmp/d/k;

    invoke-direct {v0}, Lcom/tencent/kgvmp/d/k;-><init>()V

    sput-object v0, Lcom/tencent/kgvmp/d/k;->b:Lcom/tencent/kgvmp/d/k;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/d/k;->b:Lcom/tencent/kgvmp/d/k;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/tencent/kgvmp/d/k;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/kgvmp/d/k;->g:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/kgvmp/d/k;)Lcom/tencent/kgvmp/VmpCallback;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/d/k;->h:Lcom/tencent/kgvmp/VmpCallback;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/kgvmp/d/k;)Lcom/tencent/vmp/GCallback;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/d/k;->i:Lcom/tencent/vmp/GCallback;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/d/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()Z
    .locals 3

    new-instance v0, Lcom/tencent/kgvmp/d/l;

    invoke-direct {v0, p0}, Lcom/tencent/kgvmp/d/l;-><init>(Lcom/tencent/kgvmp/d/k;)V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/kgvmp/d/k;->c:Lcom/vivo/vivogamesdk/VivoGameSDK;

    iget-object v2, p0, Lcom/tencent/kgvmp/d/k;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/vivo/vivogamesdk/VivoGameSDK;->registerGame(Ljava/lang/String;Lcom/vivo/vivogamesdk/GameEngineCallBack;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/kgvmp/d/k;->a:Ljava/lang/String;

    const-string v2, "registerGame: vivo register exception."

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/tencent/kgvmp/VmpCallback;)Lcom/tencent/kgvmp/report/f;
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/k;->e:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/k;->a:Ljava/lang/String;

    const-string v1, "registerGame: vivo sdk is not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VIVO_MOBILE_REGISTER_FAILED:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/k;->f:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/d/k;->a:Ljava/lang/String;

    const-string v1, "registerGame: already registered."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/tencent/kgvmp/d/k;->h:Lcom/tencent/kgvmp/VmpCallback;

    invoke-direct {p0}, Lcom/tencent/kgvmp/d/k;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/kgvmp/d/k;->f:Z

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/k;->f:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/kgvmp/d/k;->a:Ljava/lang/String;

    const-string v1, "registerGame: vivo failed."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VIVO_MOBILE_REGISTER_FAILED:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/kgvmp/d/k;->a:Ljava/lang/String;

    const-string v1, "registerGame: vivo VmpCallback set success."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/tencent/vmp/GCallback;)Lcom/tencent/kgvmp/report/f;
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/k;->e:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/k;->a:Ljava/lang/String;

    const-string v1, "registerGame: vivo sdk is not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VIVO_MOBILE_REGISTER_FAILED:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/k;->f:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/d/k;->a:Ljava/lang/String;

    const-string v1, "registerGame: already registered."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/tencent/kgvmp/d/k;->i:Lcom/tencent/vmp/GCallback;

    invoke-direct {p0}, Lcom/tencent/kgvmp/d/k;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/kgvmp/d/k;->f:Z

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/k;->f:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/kgvmp/d/k;->a:Ljava/lang/String;

    const-string v1, "registerGame: vivo failed."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VIVO_MOBILE_REGISTER_FAILED:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/kgvmp/d/k;->a:Ljava/lang/String;

    const-string v1, "registerGame: vivo GCallback set success."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0
.end method

.method public b()Lcom/tencent/kgvmp/report/f;
    .locals 2

    iget-object v0, p0, Lcom/tencent/kgvmp/d/k;->c:Lcom/vivo/vivogamesdk/VivoGameSDK;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/k;->a:Ljava/lang/String;

    const-string v1, " vivo sdk object is null."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/vivogamesdk/VivoGameSDK;->getInstance()Lcom/vivo/vivogamesdk/VivoGameSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/kgvmp/d/k;->c:Lcom/vivo/vivogamesdk/VivoGameSDK;

    iget-object v0, p0, Lcom/tencent/kgvmp/d/k;->c:Lcom/vivo/vivogamesdk/VivoGameSDK;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/k;->a:Ljava/lang/String;

    const-string v1, " vivo sdk object is still null."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VIVO_CREATE_SDK_OBJECT_NULL:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/kgvmp/d/k;->c:Lcom/vivo/vivogamesdk/VivoGameSDK;

    iget-object v1, p0, Lcom/tencent/kgvmp/d/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/vivogamesdk/VivoGameSDK;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/kgvmp/d/k;->e:Z

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/d/k;->a:Ljava/lang/String;

    const-string/jumbo v1, "vivo sdk is not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VIVO_MOBILE_NOT_SUPPORT_SDK:Lcom/tencent/kgvmp/report/f;

    goto :goto_0
.end method
