.class public Lcom/tencent/android/tpush/XGDownloadService;
.super Landroid/app/Service;
.source "ProGuard"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private d:Ljava/io/File;

.field private e:Ljava/io/File;

.field private f:Landroid/app/NotificationManager;

.field private g:Landroid/app/Notification;

.field private h:Landroid/content/Intent;

.field private i:Landroid/app/PendingIntent;

.field private j:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/tencent/android/tpush/XGDownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/XGDownloadService;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->a:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->b:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/tencent/android/tpush/XGDownloadService;->d:Ljava/io/File;

    .line 33
    iput-object v1, p0, Lcom/tencent/android/tpush/XGDownloadService;->e:Ljava/io/File;

    .line 36
    iput-object v1, p0, Lcom/tencent/android/tpush/XGDownloadService;->f:Landroid/app/NotificationManager;

    .line 37
    iput-object v1, p0, Lcom/tencent/android/tpush/XGDownloadService;->g:Landroid/app/Notification;

    .line 39
    iput-object v1, p0, Lcom/tencent/android/tpush/XGDownloadService;->h:Landroid/content/Intent;

    .line 40
    iput-object v1, p0, Lcom/tencent/android/tpush/XGDownloadService;->i:Landroid/app/PendingIntent;

    .line 43
    new-instance v0, Lcom/tencent/android/tpush/b;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/b;-><init>(Lcom/tencent/android/tpush/XGDownloadService;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->j:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/XGDownloadService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/tencent/android/tpush/XGDownloadService;->i:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/android/tpush/XGDownloadService;)Ljava/io/File;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->e:Ljava/io/File;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/tencent/android/tpush/XGDownloadService;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/android/tpush/XGDownloadService;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->g:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/android/tpush/XGDownloadService;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->f:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/android/tpush/XGDownloadService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/android/tpush/XGDownloadService;)Ljava/io/File;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->d:Ljava/io/File;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/android/tpush/XGDownloadService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/File;I)J
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 123
    .line 125
    const-wide/16 v6, 0x0

    .line 133
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 135
    :try_start_1
    const-string v2, "User-Agent"

    const-string v4, "PacificHttpClient"

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 142
    const/16 v2, 0x4e20

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 143
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    .line 144
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0x194

    if-ne v2, v4, :cond_3

    .line 145
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "fail!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :catchall_0
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v0

    :goto_0
    if-eqz v5, :cond_0

    .line 168
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 170
    :cond_0
    if-eqz v4, :cond_1

    .line 171
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 173
    :cond_1
    if-eqz v2, :cond_2

    .line 174
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v1

    .line 147
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 148
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v8, 0x0

    invoke-direct {v2, p2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 149
    const/16 v3, 0x1000

    :try_start_4
    new-array v3, v3, [B

    .line 151
    :cond_4
    :goto_1
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_6

    .line 152
    const/4 v9, 0x0

    invoke-virtual {v2, v3, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 153
    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 155
    if-eqz v1, :cond_5

    const-wide/16 v8, 0x64

    mul-long/2addr v8, v6

    int-to-long v10, v5

    div-long/2addr v8, v10

    long-to-int v8, v8

    add-int/lit8 v8, v8, -0xa

    if-le v8, v1, :cond_4

    .line 157
    :cond_5
    add-int/lit8 v1, v1, 0xa

    .line 162
    iget-object v8, p0, Lcom/tencent/android/tpush/XGDownloadService;->f:Landroid/app/NotificationManager;

    iget-object v9, p0, Lcom/tencent/android/tpush/XGDownloadService;->g:Landroid/app/Notification;

    invoke-virtual {v8, p3, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 167
    :catchall_1
    move-exception v1

    move-object v5, v0

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 168
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 170
    :cond_7
    if-eqz v4, :cond_8

    .line 171
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 173
    :cond_8
    if-eqz v2, :cond_9

    .line 174
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 177
    :cond_9
    return-wide v6

    .line 167
    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    goto :goto_0

    :catchall_3
    move-exception v1

    move-object v2, v3

    move-object v5, v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 184
    const-string v1, "packageDownloadUrl"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/android/tpush/XGDownloadService;->b:Ljava/lang/String;

    .line 188
    :try_start_0
    const-string v2, "NOTIFY_ID"

    .line 189
    const/4 v1, 0x0

    invoke-static {p0, v2, v1}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 190
    const v3, 0x7ffffffe

    if-lt v1, v3, :cond_1

    .line 193
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v2, v1}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 197
    :goto_1
    invoke-static {}, Lcom/tencent/android/tpush/service/e/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "app/download/"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->d:Ljava/io/File;

    .line 200
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/android/tpush/XGDownloadService;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadApp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->e:Ljava/io/File;

    .line 204
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/XGDownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->f:Landroid/app/NotificationManager;

    .line 205
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->g:Landroid/app/Notification;

    .line 207
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->g:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/tencent/android/tpush/XGDownloadService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 208
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->g:Landroid/app/Notification;

    const-string/jumbo v2, "\u5f00\u59cb\u4e0b\u8f7d"

    iput-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 212
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->f:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/tencent/android/tpush/XGDownloadService;->g:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 214
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v2, Lcom/tencent/android/tpush/c;

    invoke-direct {v2, p0, p1, v1}, Lcom/tencent/android/tpush/c;-><init>(Lcom/tencent/android/tpush/XGDownloadService;Landroid/content/Intent;I)V

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    .line 217
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    sget-object v2, Lcom/tencent/android/tpush/XGDownloadService;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto/16 :goto_0
.end method
