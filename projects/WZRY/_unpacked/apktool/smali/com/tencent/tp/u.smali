.class Lcom/tencent/tp/u;
.super Ljava/lang/Object;


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/tencent/tp/u;->a()V

    iput-boolean p1, p0, Lcom/tencent/tp/u;->a:Z

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tp/u;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {p1}, Lcom/tencent/tp/x;->a(Landroid/content/Context;)V

    :try_start_0
    new-instance v0, Lcom/tencent/tp/t;

    invoke-direct {v0}, Lcom/tencent/tp/t;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "EXCEPTION:CRETAE_INFO_REPORT_OBJ"

    invoke-static {v0}, Lcom/tencent/tp/m;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v0, p1}, Lcom/tencent/tp/t;->a(Landroid/content/Context;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    iget-boolean v1, p0, Lcom/tencent/tp/u;->a:Z

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v0}, Lcom/tencent/tp/t;->a()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    const-string v0, "EXCEPTION:REPORT_DEVICES_INFO"

    invoke-static {v0}, Lcom/tencent/tp/m;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    :try_start_5
    const-string v0, "EXCEPTION:INIT_INFO_REPORT_OBJ"

    invoke-static {v0}, Lcom/tencent/tp/m;->c(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    move-object v0, v1

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method
