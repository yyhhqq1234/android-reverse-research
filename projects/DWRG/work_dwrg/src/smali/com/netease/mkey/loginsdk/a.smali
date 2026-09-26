.class public Lcom/netease/mkey/loginsdk/a;
.super Ljava/lang/Object;
.source "LoginHelper.java"


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Landroid/content/Context;

.field private static c:Lcom/netease/mkey/a;

.field private static d:Lcom/netease/mkey/b;

.field private static e:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic a(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lcom/netease/mkey/loginsdk/a;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lcom/netease/mkey/loginsdk/a;->e:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mkey/a;)Lcom/netease/mkey/a;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lcom/netease/mkey/loginsdk/a;->c:Lcom/netease/mkey/a;

    return-object p0
.end method

.method static synthetic a()Lcom/netease/mkey/b;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/netease/mkey/loginsdk/a;->d:Lcom/netease/mkey/b;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mkey/b;)Lcom/netease/mkey/b;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lcom/netease/mkey/loginsdk/a;->d:Lcom/netease/mkey/b;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3}, Lcom/netease/mkey/loginsdk/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mkey/loginsdk/LoginCallback;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 138
    const-string v0, "com.netease.mkey"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mkey/loginsdk/a;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x5

    const-string v1, "\u6ca1\u6709\u5b89\u88c5\u5c06\u519b\u4ee4"

    invoke-interface {p5, v0, v1}, Lcom/netease/mkey/loginsdk/LoginCallback;->onError(ILjava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string v0, "com.netease.mkey"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mkey/loginsdk/a;->b(Ljava/lang/String;Landroid/content/pm/PackageManager;)I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_1

    .line 145
    const/4 v0, 0x6

    const-string v1, "\u5c06\u519b\u4ee4\u7248\u672c\u592a\u4f4e,\u8bf7\u5148\u5347\u7ea7"

    invoke-interface {p5, v0, v1}, Lcom/netease/mkey/loginsdk/LoginCallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    new-instance v0, Lcom/netease/mkey/loginsdk/a$1;

    invoke-direct {v0, p5}, Lcom/netease/mkey/loginsdk/a$1;-><init>(Lcom/netease/mkey/loginsdk/LoginCallback;)V

    sput-object v0, Lcom/netease/mkey/loginsdk/a;->a:Landroid/os/Handler;

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/netease/mkey/loginsdk/a;->b:Landroid/content/Context;

    .line 167
    new-instance v0, Lcom/netease/mkey/loginsdk/a$2;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/netease/mkey/loginsdk/a$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mkey/loginsdk/a;->e:Landroid/content/ServiceConnection;

    .line 185
    new-instance v0, Lcom/netease/mkey/loginsdk/a$3;

    invoke-direct {v0, p2}, Lcom/netease/mkey/loginsdk/a$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mkey/loginsdk/a;->d:Lcom/netease/mkey/b;

    .line 209
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 210
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.netease.mkey"

    const-string v3, "com.netease.mkey.service.LoginAuthService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 211
    sget-object v1, Lcom/netease/mkey/loginsdk/a;->b:Landroid/content/Context;

    sget-object v2, Lcom/netease/mkey/loginsdk/a;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 212
    if-eqz v0, :cond_2

    .line 213
    const-string v0, "mkey_login_sdk"

    const-string v1, "bind succeed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    const-string v0, "\u8c03\u7528\u5c06\u519b\u4ee4\u670d\u52a1\u5931\u8d25,\u8bf7\u68c0\u67e5\u6743\u9650\u8bbe\u7f6e"

    invoke-interface {p5, v4, v0}, Lcom/netease/mkey/loginsdk/LoginCallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_2
    :try_start_1
    const-string v0, "mkey_login_sdk"

    const-string v1, "bind failed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x4

    const-string v1, "\u8c03\u7528\u5c06\u519b\u4ee4\u670d\u52a1\u5931\u8d25,\u8bf7\u68c0\u67e5\u6743\u9650\u8bbe\u7f6e"

    invoke-interface {p5, v0, v1}, Lcom/netease/mkey/loginsdk/LoginCallback;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 31
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Landroid/content/pm/PackageManager;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 40
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 41
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return v0

    .line 42
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b()Lcom/netease/mkey/a;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/netease/mkey/loginsdk/a;->c:Lcom/netease/mkey/a;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mkey://login?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    const-string v1, "urs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pid="

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uuid="

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sign="

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/netease/mkey/loginsdk/a;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/netease/mkey/loginsdk/a;->e:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/netease/mkey/loginsdk/a;->b:Landroid/content/Context;

    return-object v0
.end method
