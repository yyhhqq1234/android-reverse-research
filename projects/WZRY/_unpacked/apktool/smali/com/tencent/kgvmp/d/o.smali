.class public Lcom/tencent/kgvmp/d/o;
.super Lcom/tencent/kgvmp/d/a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/tencent/kgvmp/d/o;


# instance fields
.field private c:Z

.field private d:Lcom/tencent/kgvmp/VmpCallback;

.field private e:Lcom/tencent/vmp/GCallback;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/d/o;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/kgvmp/d/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/kgvmp/d/o;->c:Z

    iput-object v1, p0, Lcom/tencent/kgvmp/d/o;->d:Lcom/tencent/kgvmp/VmpCallback;

    iput-object v1, p0, Lcom/tencent/kgvmp/d/o;->e:Lcom/tencent/vmp/GCallback;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/kgvmp/d/o;->f:I

    return-void
.end method

.method private a(I)I
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/tencent/kgvmp/d/o;)I
    .locals 1

    iget v0, p0, Lcom/tencent/kgvmp/d/o;->f:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/kgvmp/d/o;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/d/o;->a(I)I

    move-result v0

    return v0
.end method

.method public static a()Lcom/tencent/kgvmp/d/o;
    .locals 2

    sget-object v0, Lcom/tencent/kgvmp/d/o;->b:Lcom/tencent/kgvmp/d/o;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/kgvmp/d/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/kgvmp/d/o;->b:Lcom/tencent/kgvmp/d/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/kgvmp/d/o;

    invoke-direct {v0}, Lcom/tencent/kgvmp/d/o;-><init>()V

    sput-object v0, Lcom/tencent/kgvmp/d/o;->b:Lcom/tencent/kgvmp/d/o;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/d/o;->b:Lcom/tencent/kgvmp/d/o;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 1

    new-instance v0, Lcom/tencent/kgvmp/d/p;

    invoke-direct {v0, p0}, Lcom/tencent/kgvmp/d/p;-><init>(Lcom/tencent/kgvmp/d/o;)V

    :try_start_0
    invoke-static {p1, v0}, Lcom/xiaomi/boostersdk/a;->a(Landroid/content/Context;Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/kgvmp/d/o;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/kgvmp/d/o;->f:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/kgvmp/d/o;)Lcom/tencent/kgvmp/VmpCallback;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/d/o;->d:Lcom/tencent/kgvmp/VmpCallback;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/kgvmp/d/o;)Lcom/tencent/vmp/GCallback;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/d/o;->e:Lcom/tencent/vmp/GCallback;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/d/o;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/tencent/kgvmp/VmpCallback;)Lcom/tencent/kgvmp/report/f;
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/o;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/o;->a:Ljava/lang/String;

    const-string v1, "registerGame: xiaomi sdk is not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->XIAOMI_MOBILE_NOT_SUPPORT_SDK:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    iput-object p2, p0, Lcom/tencent/kgvmp/d/o;->d:Lcom/tencent/kgvmp/VmpCallback;

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/d/o;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/d/o;->a:Ljava/lang/String;

    const-string v1, "registerGame: xiaomi sdk register game failed."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->XIAOMI_MOBILE_REGISTER_FAILED:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/d/o;->a:Ljava/lang/String;

    const-string v1, "registerGame: xiaomi VmpCallback set success."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/tencent/vmp/GCallback;)Lcom/tencent/kgvmp/report/f;
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/o;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/o;->a:Ljava/lang/String;

    const-string v1, "registerGame: xiaomi sdk is not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->XIAOMI_MOBILE_NOT_SUPPORT_SDK:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    iput-object p2, p0, Lcom/tencent/kgvmp/d/o;->e:Lcom/tencent/vmp/GCallback;

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/d/o;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/report/f;->XIAOMI_MOBILE_REGISTER_FAILED:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/d/o;->a:Ljava/lang/String;

    const-string v1, "registerGame: xiaomi GCallback set success."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/tencent/kgvmp/report/f;
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/o;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/report/f;->XIAOMI_MOBILE_NOT_SUPPORT_SDK:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/tencent/kgvmp/d/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateGameInfo: xiaomi json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaomi/boostersdk/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/tencent/kgvmp/d/o;->a:Ljava/lang/String;

    const-string/jumbo v1, "updateGameInfo: xiaomi exception."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b()Lcom/tencent/kgvmp/report/f;
    .locals 2

    sget-object v0, Lcom/tencent/kgvmp/d/o;->a:Ljava/lang/String;

    const-string v1, "checking xiaomi sdk available...."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/boostersdk/a;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/kgvmp/d/o;->c:Z

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d/o;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/o;->a:Ljava/lang/String;

    const-string/jumbo v1, "xiaomi sdk is support."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/d/o;->a:Ljava/lang/String;

    const-string/jumbo v1, "xiaomi sdk is not support."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->XIAOMI_MOBILE_NOT_SUPPORT_SDK:Lcom/tencent/kgvmp/report/f;

    goto :goto_0
.end method
