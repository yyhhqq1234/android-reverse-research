.class public Lcom/tencent/kgvmp/d/h;
.super Lcom/tencent/kgvmp/d/a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/tencent/kgvmp/d/h;


# instance fields
.field private c:Z

.field private d:Lcom/samsung/android/game/gamelib/GameServiceHelper;

.field private e:I

.field private f:Lcom/tencent/kgvmp/VmpCallback;

.field private g:Lcom/tencent/vmp/GCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/d/h;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/kgvmp/d/h;->b:Lcom/tencent/kgvmp/d/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/kgvmp/d/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/kgvmp/d/h;->c:Z

    new-instance v0, Lcom/samsung/android/game/gamelib/GameServiceHelper;

    invoke-direct {v0}, Lcom/samsung/android/game/gamelib/GameServiceHelper;-><init>()V

    iput-object v0, p0, Lcom/tencent/kgvmp/d/h;->d:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/kgvmp/d/h;->e:I

    iput-object v1, p0, Lcom/tencent/kgvmp/d/h;->f:Lcom/tencent/kgvmp/VmpCallback;

    iput-object v1, p0, Lcom/tencent/kgvmp/d/h;->g:Lcom/tencent/vmp/GCallback;

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
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/tencent/kgvmp/d/h;)I
    .locals 1

    iget v0, p0, Lcom/tencent/kgvmp/d/h;->e:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/kgvmp/d/h;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/d/h;->a(I)I

    move-result v0

    return v0
.end method

.method public static a()Lcom/tencent/kgvmp/d/h;
    .locals 2

    sget-object v0, Lcom/tencent/kgvmp/d/h;->b:Lcom/tencent/kgvmp/d/h;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/kgvmp/d/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/kgvmp/d/h;->b:Lcom/tencent/kgvmp/d/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/kgvmp/d/h;

    invoke-direct {v0}, Lcom/tencent/kgvmp/d/h;-><init>()V

    sput-object v0, Lcom/tencent/kgvmp/d/h;->b:Lcom/tencent/kgvmp/d/h;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/d/h;->b:Lcom/tencent/kgvmp/d/h;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/tencent/kgvmp/d/h;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/kgvmp/d/h;->e:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/kgvmp/d/h;)Lcom/tencent/kgvmp/VmpCallback;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/d/h;->f:Lcom/tencent/kgvmp/VmpCallback;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/d/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/kgvmp/d/h;)Lcom/tencent/vmp/GCallback;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/d/h;->g:Lcom/tencent/vmp/GCallback;

    return-object v0
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/kgvmp/d/h;->d:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    new-instance v1, Lcom/tencent/kgvmp/d/i;

    invoke-direct {v1, p0}, Lcom/tencent/kgvmp/d/i;-><init>(Lcom/tencent/kgvmp/d/h;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gamelib/GameServiceHelper;->registerListener(Lcom/samsung/android/game/gamelib/GameServiceHelper$Listener;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/tencent/kgvmp/report/f;
    .locals 4

    iget-object v0, p0, Lcom/tencent/kgvmp/d/h;->d:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/h;->a:Ljava/lang/String;

    const-string v1, "isAvailable: gameservicehelper is null."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->SAMSUNG2_GAME_SERVICE_HELPER_IS_NULL:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/d/h;->a:Ljava/lang/String;

    const-string v1, "isAvailable: ready to bind."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/d/h;->d:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/gamelib/GameServiceHelper;->bind(Landroid/content/Context;)V

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lcom/tencent/kgvmp/d/h;->d:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/game/gamelib/GameServiceHelper;->init()Z

    move-result v0

    sget-object v1, Lcom/tencent/kgvmp/d/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailable: gameservicehelper init."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/report/f;->SAMSUNG2_GAME_SERVICE_HELPER_INIT_FAILED:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/kgvmp/d/h;->c:Z

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/tencent/kgvmp/VmpCallback;)Lcom/tencent/kgvmp/report/f;
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/h;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/h;->a:Ljava/lang/String;

    const-string v1, "registerGame: samsung2 gamesdk is not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->SAMSUNG2_GAME_SERVICE_HELPER_INIT_FAILED:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    iput-object p2, p0, Lcom/tencent/kgvmp/d/h;->f:Lcom/tencent/kgvmp/VmpCallback;

    invoke-direct {p0}, Lcom/tencent/kgvmp/d/h;->c()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/d/h;->a:Ljava/lang/String;

    const-string v1, "registerGame: samsung2 gamesdk register VmpCallback failed."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->SAMSUNG2_GAME_SERVICE_HELPER_REGISTERED_FAILED:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/d/h;->a:Ljava/lang/String;

    const-string v1, "registerGame: samsung VmpCallback set success."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/tencent/vmp/GCallback;)Lcom/tencent/kgvmp/report/f;
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/h;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/h;->a:Ljava/lang/String;

    const-string v1, "registerGame: samsung2 gamesdk is not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->SAMSUNG2_GAME_SERVICE_HELPER_INIT_FAILED:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    iput-object p2, p0, Lcom/tencent/kgvmp/d/h;->g:Lcom/tencent/vmp/GCallback;

    invoke-direct {p0}, Lcom/tencent/kgvmp/d/h;->c()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/d/h;->a:Ljava/lang/String;

    const-string v1, "registerGame: samsung2 gamesdk register GCallback failed."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->SAMSUNG2_GAME_SERVICE_HELPER_REGISTERED_FAILED:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/d/h;->a:Ljava/lang/String;

    const-string v1, "registerGame: samsung2 GCallback set success."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/tencent/kgvmp/report/f;
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/h;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateGameInfo: samsung2 json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/d/h;->d:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/gamelib/GameServiceHelper;->updateGameInfo(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/tencent/kgvmp/d/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGameInfo: samsung2 update faild: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    return-object v0
.end method
