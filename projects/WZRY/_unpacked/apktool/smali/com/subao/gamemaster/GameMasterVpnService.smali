.class public Lcom/subao/gamemaster/GameMasterVpnService;
.super Lcom/subao/common/a/e;
.source "GameMasterVpnService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static b:Ljava/lang/String;

.field private static c:Lcom/subao/gamemaster/GameMasterVpnService;


# instance fields
.field protected a:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/subao/common/a/e;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lcom/subao/gamemaster/GameMasterVpnService;->b:Ljava/lang/String;

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    :goto_0
    return-object v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 68
    :cond_1
    if-nez v0, :cond_2

    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 71
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "CN"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    :cond_3
    const-string/jumbo v0, "\u6e38\u620f\u52a0\u901f\u670d\u52a1"

    goto :goto_0

    .line 73
    :cond_4
    const-string v1, "TW"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    const-string/jumbo v0, "\u904a\u6232\u52a0\u901f\u670d\u52d9"

    goto :goto_0

    .line 76
    :cond_5
    const-string v0, "Game Acceleration Service"

    goto :goto_0
.end method

.method static a(Landroid/net/VpnService$Builder;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/VpnService$Builder;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    .line 100
    invoke-static {p0, p1, v1}, Lcom/subao/gamemaster/GameMasterVpnService;->a(Landroid/net/VpnService$Builder;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    :cond_0
    return-void

    .line 103
    :cond_1
    if-eqz p2, :cond_0

    .line 104
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-static {p0, v0, v1}, Lcom/subao/gamemaster/GameMasterVpnService;->a(Landroid/net/VpnService$Builder;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    sput-object p0, Lcom/subao/gamemaster/GameMasterVpnService;->b:Ljava/lang/String;

    .line 302
    return-void
.end method

.method static a(Landroid/net/VpnService$Builder;Ljava/lang/String;Z)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    if-eqz p2, :cond_0

    .line 113
    const-string v2, "add allowed app (%s)"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/subao/gamemaster/GameMasterVpnService;->b(Ljava/lang/String;)V

    .line 116
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :goto_0
    return v0

    .line 118
    :catch_0
    move-exception v0

    move v0, v1

    .line 119
    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    move v0, v1

    .line 121
    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 49
    const-string v0, "SubaoGame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameVpn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/subao/gamemaster/GameMasterVpnService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized c()Lcom/subao/gamemaster/GameMasterVpnService;
    .locals 2

    .prologue
    .line 81
    const-class v0, Lcom/subao/gamemaster/GameMasterVpnService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/subao/gamemaster/GameMasterVpnService;->c:Lcom/subao/gamemaster/GameMasterVpnService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/subao/gamemaster/GameMasterVpnService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 95
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 207
    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/subao/gamemaster/GameMasterVpnService;->a:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_2

    .line 210
    if-eqz v1, :cond_0

    .line 211
    const-string v0, "establish ..."

    invoke-static {v0}, Lcom/subao/gamemaster/GameMasterVpnService;->b(Ljava/lang/String;)V

    .line 213
    :cond_0
    new-instance v0, Landroid/net/VpnService$Builder;

    invoke-direct {v0, p0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    invoke-virtual {p0, p1, v0}, Lcom/subao/gamemaster/GameMasterVpnService;->a(Ljava/lang/Iterable;Landroid/net/VpnService$Builder;)I

    move-result v0

    .line 214
    if-eqz v1, :cond_1

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "establish return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/subao/gamemaster/GameMasterVpnService;->b(Ljava/lang/String;)V

    .line 217
    :cond_1
    if-eqz v0, :cond_2

    .line 218
    monitor-exit p0

    .line 222
    :goto_0
    return v0

    .line 221
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-virtual {p0}, Lcom/subao/gamemaster/GameMasterVpnService;->d()I

    move-result v0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(Ljava/lang/Iterable;Landroid/net/VpnService$Builder;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/VpnService$Builder;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 249
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/subao/gamemaster/GameMasterVpnService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/subao/gamemaster/GameMasterVpnService;->a(Landroid/net/VpnService$Builder;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 252
    :cond_0
    const-string v1, "198.51.100.10"

    const/16 v2, 0x20

    invoke-virtual {p2, v1, v2}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 253
    const-string v1, "0.0.0.0"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 254
    invoke-virtual {p0}, Lcom/subao/gamemaster/GameMasterVpnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/subao/gamemaster/GameMasterVpnService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 255
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/net/VpnService$Builder;->setConfigureIntent(Landroid/app/PendingIntent;)Landroid/net/VpnService$Builder;

    .line 257
    invoke-virtual {p2}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/subao/gamemaster/GameMasterVpnService;->a:Landroid/os/ParcelFileDescriptor;

    .line 258
    iget-object v1, p0, Lcom/subao/gamemaster/GameMasterVpnService;->a:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    .line 259
    const/16 v0, 0x1f45

    .line 268
    :cond_1
    :goto_0
    return v0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 265
    const/16 v0, 0x1f40

    goto :goto_0

    .line 266
    :catch_1
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 268
    const/16 v0, 0x1f44

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 277
    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    .line 278
    monitor-enter p0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/subao/gamemaster/GameMasterVpnService;->a:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    .line 281
    invoke-static {}, Lcom/subao/common/a/b;->a()Lcom/subao/common/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/subao/common/a/a;->d()V

    .line 283
    if-eqz v0, :cond_0

    .line 284
    const-string v0, "close interface"

    invoke-static {v0}, Lcom/subao/gamemaster/GameMasterVpnService;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/subao/gamemaster/GameMasterVpnService;->a:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/subao/gamemaster/GameMasterVpnService;->a:Landroid/os/ParcelFileDescriptor;

    .line 293
    :cond_1
    monitor-exit p0

    .line 294
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/subao/gamemaster/GameMasterVpnService;->a:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()I
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/subao/gamemaster/GameMasterVpnService;->a:Landroid/os/ParcelFileDescriptor;

    .line 232
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    .line 234
    invoke-static {}, Lcom/subao/common/a/b;->a()Lcom/subao/common/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/subao/common/a/a;->a(I)I

    move-result v0

    .line 236
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1f46

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    const-string v1, "service create"

    invoke-static {v1}, Lcom/subao/gamemaster/GameMasterVpnService;->b(Ljava/lang/String;)V

    .line 151
    :cond_0
    invoke-super {p0}, Lcom/subao/common/a/e;->onCreate()V

    .line 152
    const-class v1, Lcom/subao/gamemaster/GameMasterVpnService;

    monitor-enter v1

    .line 153
    :try_start_0
    sput-object p0, Lcom/subao/gamemaster/GameMasterVpnService;->c:Lcom/subao/gamemaster/GameMasterVpnService;

    .line 154
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-static {}, Lcom/subao/common/a/b;->a()Lcom/subao/common/a/a;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_2

    .line 157
    if-eqz v0, :cond_1

    .line 158
    const-string v0, "Notify AccelEngine instance when service create"

    invoke-static {v0}, Lcom/subao/gamemaster/GameMasterVpnService;->b(Ljava/lang/String;)V

    .line 160
    :cond_1
    invoke-interface {v1}, Lcom/subao/common/a/a;->b()V

    .line 164
    :goto_0
    return-void

    .line 154
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 162
    :cond_2
    const-string v0, "SubaoGame"

    const-string v1, "AccelEngine instance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 187
    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "service destroy"

    invoke-static {v0}, Lcom/subao/gamemaster/GameMasterVpnService;->b(Ljava/lang/String;)V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/subao/gamemaster/GameMasterVpnService;->a()V

    .line 191
    invoke-super {p0}, Lcom/subao/common/a/e;->onDestroy()V

    .line 192
    const-class v1, Lcom/subao/gamemaster/GameMasterVpnService;

    monitor-enter v1

    .line 193
    :try_start_0
    sget-object v0, Lcom/subao/gamemaster/GameMasterVpnService;->c:Lcom/subao/gamemaster/GameMasterVpnService;

    if-ne v0, p0, :cond_1

    .line 194
    const/4 v0, 0x0

    sput-object v0, Lcom/subao/gamemaster/GameMasterVpnService;->c:Lcom/subao/gamemaster/GameMasterVpnService;

    .line 196
    :cond_1
    monitor-exit v1

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRevoke()V
    .locals 2

    .prologue
    .line 178
    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "SubaoGame"

    const-string v1, "service revoked"

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/subao/gamemaster/GameMasterVpnService;->a()V

    .line 182
    invoke-super {p0}, Lcom/subao/common/a/e;->onRevoke()V

    .line 183
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/subao/common/a/e;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    .line 128
    invoke-virtual {p0}, Lcom/subao/gamemaster/GameMasterVpnService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/subao/gamemaster/GameMasterVpnService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 132
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 133
    if-eqz v0, :cond_1

    .line 134
    const-string v2, "start_command_result"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 135
    if-ltz v0, :cond_1

    :goto_0
    move v1, v0

    .line 141
    :cond_0
    :goto_1
    sget-object v0, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "onStartCommand(%s, %d, %d) return %d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/gamemaster/GameMasterVpnService;->b(Ljava/lang/String;)V

    .line 142
    return v1

    .line 139
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
