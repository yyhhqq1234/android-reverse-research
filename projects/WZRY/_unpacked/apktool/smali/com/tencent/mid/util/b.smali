.class public Lcom/tencent/mid/util/b;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/tencent/mid/util/f;

.field private static d:Lcom/tencent/mid/util/b;

.field private static e:I

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;


# instance fields
.field private a:Lcom/tencent/mid/b/d;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/f;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/util/b;->c:Lcom/tencent/mid/util/f;

    sput-object v1, Lcom/tencent/mid/util/b;->d:Lcom/tencent/mid/util/b;

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mid/util/b;->e:I

    sput-object v1, Lcom/tencent/mid/util/b;->f:Ljava/lang/String;

    sput-object v1, Lcom/tencent/mid/util/b;->g:Ljava/lang/String;

    sput-object v1, Lcom/tencent/mid/util/b;->h:Ljava/lang/String;

    sput-object v1, Lcom/tencent/mid/util/b;->i:Ljava/lang/String;

    sput-object v1, Lcom/tencent/mid/util/b;->j:Ljava/lang/String;

    sput-object v1, Lcom/tencent/mid/util/b;->k:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mid/util/b;->a:Lcom/tencent/mid/b/d;

    iput-object v0, p0, Lcom/tencent/mid/util/b;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/tencent/mid/util/b;->b:Landroid/content/Context;

    new-instance v0, Lcom/tencent/mid/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tencent/mid/b/d;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/mid/util/b;->a:Lcom/tencent/mid/b/d;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/mid/util/b;
    .locals 2

    const-class v1, Lcom/tencent/mid/util/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/mid/util/b;->d:Lcom/tencent/mid/util/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mid/util/b;

    invoke-direct {v0, p0}, Lcom/tencent/mid/util/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/mid/util/b;->d:Lcom/tencent/mid/util/b;

    :cond_0
    sget-object v0, Lcom/tencent/mid/util/b;->d:Lcom/tencent/mid/util/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 2

    :try_start_0
    sget v0, Lcom/tencent/mid/util/b;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mid/util/b;->a:Lcom/tencent/mid/b/d;

    const-string/jumbo v1, "teg_mid_key_version"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tencent/mid/util/b;->e:I

    :cond_0
    sget v0, Lcom/tencent/mid/util/b;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/tencent/mid/util/b;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mid/util/b;->a:Lcom/tencent/mid/b/d;

    const-string/jumbo v1, "teg_mid_rsa_pk"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/util/b;->f:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/tencent/mid/util/b;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5zQz+I9s/DqreFr8dkd6wSdYDngK9T36rtlDPM6VJHjWQHv6FK83xbDoX6hgcZMPYIIawcwRCVPZNetRlsAnztAt7b71z9NvPaF24+fhHe8Sy3Z/Z2JxvGXsjDnejZzdiuHTS+FGUSjcX+CzyqB30yX0AV+LgxXtQe9aRpT5yo5W6jc2UpEhBYCjpGlmW1mksAwWbyvWSEUTkUD7n9uP7C8eFEh5DHnaTwzxAQtzSxQVC1ZopnC3ly/LhMRl8GFXsFlRzg4VTkSdwS/amyWtkKjfHXp7qh4ySBqY9HEGaoZIHrXGv3VtpXoTgGraj+5HPArW0wqQroUOYVx48xRs6QIDAQAB"

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/tencent/mid/util/b;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5zQz+I9s/DqreFr8dkd6wSdYDngK9T36rtlDPM6VJHjWQHv6FK83xbDoX6hgcZMPYIIawcwRCVPZNetRlsAnztAt7b71z9NvPaF24+fhHe8Sy3Z/Z2JxvGXsjDnejZzdiuHTS+FGUSjcX+CzyqB30yX0AV+LgxXtQe9aRpT5yo5W6jc2UpEhBYCjpGlmW1mksAwWbyvWSEUTkUD7n9uP7C8eFEh5DHnaTwzxAQtzSxQVC1ZopnC3ly/LhMRl8GFXsFlRzg4VTkSdwS/amyWtkKjfHXp7qh4ySBqY9HEGaoZIHrXGv3VtpXoTgGraj+5HPArW0wqQroUOYVx48xRs6QIDAQAB"

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/tencent/mid/util/b;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mid/util/b;->a:Lcom/tencent/mid/b/d;

    const-string/jumbo v1, "teg_mid_http_service"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/util/b;->g:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/tencent/mid/util/b;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pingmid.qq.com:80"

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/tencent/mid/util/b;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "pingmid.qq.com:80"

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "/request"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "/request_new"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "/verify"

    return-object v0
.end method
