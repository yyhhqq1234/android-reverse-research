.class public Lcom/tencent/kgvmp/d/f;
.super Lcom/tencent/kgvmp/d/a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/tencent/kgvmp/d/f;


# instance fields
.field private c:Lcom/samsung/android/gamesdk/GameSDKManager;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Lcom/tencent/kgvmp/VmpCallback;

.field private h:Lcom/tencent/vmp/GCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/d/f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/kgvmp/d/f;->b:Lcom/tencent/kgvmp/d/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/kgvmp/d/a;-><init>()V

    new-instance v0, Lcom/samsung/android/gamesdk/GameSDKManager;

    invoke-direct {v0}, Lcom/samsung/android/gamesdk/GameSDKManager;-><init>()V

    iput-object v0, p0, Lcom/tencent/kgvmp/d/f;->c:Lcom/samsung/android/gamesdk/GameSDKManager;

    iput-boolean v1, p0, Lcom/tencent/kgvmp/d/f;->d:Z

    iput-boolean v1, p0, Lcom/tencent/kgvmp/d/f;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/kgvmp/d/f;->f:I

    iput-object v2, p0, Lcom/tencent/kgvmp/d/f;->g:Lcom/tencent/kgvmp/VmpCallback;

    iput-object v2, p0, Lcom/tencent/kgvmp/d/f;->h:Lcom/tencent/vmp/GCallback;

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
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/tencent/kgvmp/d/f;)I
    .locals 1

    iget v0, p0, Lcom/tencent/kgvmp/d/f;->f:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/kgvmp/d/f;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/d/f;->a(I)I

    move-result v0

    return v0
.end method

.method public static a()Lcom/tencent/kgvmp/d/f;
    .locals 2

    sget-object v0, Lcom/tencent/kgvmp/d/f;->b:Lcom/tencent/kgvmp/d/f;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/kgvmp/d/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/kgvmp/d/f;->b:Lcom/tencent/kgvmp/d/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/kgvmp/d/f;

    invoke-direct {v0}, Lcom/tencent/kgvmp/d/f;-><init>()V

    sput-object v0, Lcom/tencent/kgvmp/d/f;->b:Lcom/tencent/kgvmp/d/f;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/d/f;->b:Lcom/tencent/kgvmp/d/f;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/tencent/kgvmp/d/f;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/kgvmp/d/f;->f:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/kgvmp/d/f;)Lcom/tencent/kgvmp/VmpCallback;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/d/f;->g:Lcom/tencent/kgvmp/VmpCallback;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/kgvmp/d/f;)Lcom/tencent/vmp/GCallback;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/d/f;->h:Lcom/tencent/vmp/GCallback;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/d/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/kgvmp/d/f;->c:Lcom/samsung/android/gamesdk/GameSDKManager;

    new-instance v1, Lcom/tencent/kgvmp/d/g;

    invoke-direct {v1, p0}, Lcom/tencent/kgvmp/d/g;-><init>(Lcom/tencent/kgvmp/d/f;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/gamesdk/GameSDKManager;->setListener(Lcom/samsung/android/gamesdk/GameSDKManager$Listener;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/tencent/kgvmp/VmpCallback;)Lcom/tencent/kgvmp/report/f;
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/f;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/f;->a:Ljava/lang/String;

    const-string v1, "registerGame: samsung gamesdk is not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->SAMSUNG_GAME_SDK_MANAGER_IS_NOT_AVAILABLE:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    iput-object p2, p0, Lcom/tencent/kgvmp/d/f;->g:Lcom/tencent/kgvmp/VmpCallback;

    invoke-direct {p0}, Lcom/tencent/kgvmp/d/f;->d()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/d/f;->a:Ljava/lang/String;

    const-string v1, "registerGame: samsung gamesdk register failed. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->SAMSUNG_GAME_SDK_MANAGER_REGISTER_CALLBACK_FALSE:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/kgvmp/d/f;->e:Z

    sget-object v0, Lcom/tencent/kgvmp/d/f;->a:Ljava/lang/String;

    const-string v1, "registerGame: samsung VmpCallback set success."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/tencent/vmp/GCallback;)Lcom/tencent/kgvmp/report/f;
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/f;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/f;->a:Ljava/lang/String;

    const-string v1, "registerGame: samsung gamesdk is not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->SAMSUNG_GAME_SDK_MANAGER_IS_NOT_AVAILABLE:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    iput-object p2, p0, Lcom/tencent/kgvmp/d/f;->h:Lcom/tencent/vmp/GCallback;

    invoke-direct {p0}, Lcom/tencent/kgvmp/d/f;->d()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/d/f;->a:Ljava/lang/String;

    const-string v1, "registerGame: samsung gamesdk register failed. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->SAMSUNG_GAME_SDK_MANAGER_REGISTER_CALLBACK_FALSE:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/kgvmp/d/f;->e:Z

    sget-object v0, Lcom/tencent/kgvmp/d/f;->a:Ljava/lang/String;

    const-string v1, "registerGame: samsung GCallback set success."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0
.end method

.method public b()Lcom/tencent/kgvmp/report/f;
    .locals 2

    invoke-static {}, Lcom/samsung/android/gamesdk/GameSDKManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/f;->a:Ljava/lang/String;

    const-string v1, "samsung sdk is not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->SAMSUNG_GAME_SDK_MANAGER_IS_NOT_AVAILABLE:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/kgvmp/d/f;->c:Lcom/samsung/android/gamesdk/GameSDKManager;

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/GameSDKManager;->initialize()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/d/f;->a:Ljava/lang/String;

    const-string v1, "samsung sdk can not initialize."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->SAMSUNG_GAME_SDK_MANAGER_CAN_NOT_INITIALIZE:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/kgvmp/d/f;->d:Z

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0
.end method
