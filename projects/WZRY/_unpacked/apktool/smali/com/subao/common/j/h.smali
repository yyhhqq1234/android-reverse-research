.class public Lcom/subao/common/j/h;
.super Ljava/lang/Object;
.source "NetManager.java"

# interfaces
.implements Lcom/subao/common/j/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/j/h$b;,
        Lcom/subao/common/j/h$a;
    }
.end annotation


# static fields
.field private static a:Lcom/subao/common/j/h;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/subao/common/j/j$a;

.field private g:Lcom/subao/common/j/h$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/j/h;->b:Landroid/content/Context;

    .line 39
    new-instance v1, Lcom/subao/common/j/h$b;

    invoke-direct {v1, p0}, Lcom/subao/common/j/h$b;-><init>(Lcom/subao/common/j/h;)V

    .line 40
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Lcom/subao/common/j/h;->d(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/subao/common/j/h;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/subao/common/j/h;->a:Lcom/subao/common/j/h;

    .line 50
    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-object v0

    .line 53
    :cond_0
    const-class v1, Lcom/subao/common/j/h;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/subao/common/j/h;->a:Lcom/subao/common/j/h;

    .line 55
    if-nez v0, :cond_1

    .line 56
    new-instance v0, Lcom/subao/common/j/h;

    invoke-direct {v0, p0}, Lcom/subao/common/j/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/subao/common/j/h;->a:Lcom/subao/common/j/h;

    .line 58
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Landroid/net/NetworkInfo;)Z
    .locals 2

    .prologue
    .line 67
    if-eqz p0, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Landroid/content/Context;)Lcom/subao/common/j/j$a;
    .locals 4

    .prologue
    .line 78
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 79
    if-nez v0, :cond_0

    .line 80
    sget-object v0, Lcom/subao/common/j/j$a;->b:Lcom/subao/common/j/j$a;

    .line 97
    :goto_0
    return-object v0

    .line 82
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 83
    if-nez v0, :cond_1

    .line 84
    const-string v0, "SubaoNet"

    const-string v1, "getActiveNetworkInfo() return null"

    invoke-static {v0, v1}, Lcom/subao/common/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/subao/common/j/j$a;->a:Lcom/subao/common/j/j$a;

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    sget-object v0, Lcom/subao/common/j/j$a;->a:Lcom/subao/common/j/j$a;

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 96
    const-string v1, "SubaoNet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkInfo.getType() return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/subao/common/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/subao/common/j/j$a;->b:Lcom/subao/common/j/j$a;

    goto :goto_0

    .line 92
    :pswitch_0
    sget-object v0, Lcom/subao/common/j/j$a;->c:Lcom/subao/common/j/j$a;

    goto :goto_0

    .line 94
    :pswitch_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/subao/common/j/f;->a(I)Lcom/subao/common/j/j$a;

    move-result-object v0

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/subao/common/j/h;->c:Z

    .line 157
    iput-boolean v0, p0, Lcom/subao/common/j/h;->e:Z

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/subao/common/j/h;->d:Z

    .line 159
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/subao/common/j/h;->c:Z

    .line 163
    iput-boolean v0, p0, Lcom/subao/common/j/h;->d:Z

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/subao/common/j/h;->e:Z

    .line 165
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/subao/common/j/h;->c:Z

    .line 169
    iput-boolean v0, p0, Lcom/subao/common/j/h;->d:Z

    .line 170
    iput-boolean v0, p0, Lcom/subao/common/j/h;->e:Z

    .line 171
    return-void
.end method

.method private h()Lcom/subao/common/j/j$a;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/subao/common/j/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/subao/common/j/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/subao/common/j/j$a;->c:Lcom/subao/common/j/j$a;

    .line 187
    :goto_0
    return-object v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/subao/common/j/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/subao/common/j/h;->b(Landroid/content/Context;)Lcom/subao/common/j/j$a;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_1
    sget-object v0, Lcom/subao/common/j/j$a;->a:Lcom/subao/common/j/j$a;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/subao/common/j/j$a;
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/subao/common/j/h;->h()Lcom/subao/common/j/j$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/subao/common/j/h$a;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/subao/common/j/h;->g:Lcom/subao/common/j/h$a;

    .line 193
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/subao/common/j/h;->c:Z

    return v0
.end method

.method c(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/subao/common/j/h;->d(Landroid/content/Context;)V

    .line 115
    invoke-direct {p0}, Lcom/subao/common/j/h;->h()Lcom/subao/common/j/j$a;

    move-result-object v1

    .line 116
    iget-object v0, p0, Lcom/subao/common/j/h;->f:Lcom/subao/common/j/j$a;

    if-eq v1, v0, :cond_1

    .line 117
    const-string v0, "SubaoNet"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v2, "SubaoNet"

    sget-object v3, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v4, "Connection Changed: %d -> %d"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/subao/common/j/h;->f:Lcom/subao/common/j/j$a;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    .line 119
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    iget v6, v1, Lcom/subao/common/j/j$a;->g:I

    .line 120
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    .line 118
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    iput-object v1, p0, Lcom/subao/common/j/h;->f:Lcom/subao/common/j/j$a;

    .line 123
    iget-object v0, p0, Lcom/subao/common/j/h;->g:Lcom/subao/common/j/h$a;

    .line 124
    if-eqz v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/subao/common/j/h;->f:Lcom/subao/common/j/j$a;

    invoke-interface {v0, v1}, Lcom/subao/common/j/h$a;->a(Lcom/subao/common/j/j$a;)V

    .line 128
    :cond_1
    return-void

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/subao/common/j/h;->f:Lcom/subao/common/j/j$a;

    iget v0, v0, Lcom/subao/common/j/j$a;->g:I

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/subao/common/j/h;->d:Z

    return v0
.end method

.method d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 133
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 134
    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/subao/common/j/h;->g()V

    .line 153
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 139
    invoke-static {v1}, Lcom/subao/common/j/h;->a(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    invoke-direct {p0}, Lcom/subao/common/j/h;->f()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/subao/common/j/h;->g()V

    goto :goto_0

    .line 143
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/subao/common/j/h;->a(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/subao/common/j/h;->e()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/subao/common/j/h;->e:Z

    return v0
.end method
