.class public Lcu_iipsmobile/CuIIPSMobile;
.super Ljava/lang/Object;
.source "CuIIPSMobile.java"


# instance fields
.field wakeLock:Landroid/os/PowerManager$WakeLock;

.field wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcu_iipsmobile/CuIIPSMobile;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 37
    iput-object v0, p0, Lcu_iipsmobile/CuIIPSMobile;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 34
    return-void
.end method


# virtual methods
.method public GetApkAbsPath(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 328
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 329
    .local v0, "activity":Landroid/app/Activity;
    const-string v1, "error"

    .line 331
    .local v1, "apkAbsPath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 332
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 333
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    const-string v6, "GetApkAbsPath"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getapkpath success,path:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .end local v1    # "apkAbsPath":Ljava/lang/String;
    .local v2, "apkAbsPath":Ljava/lang/String;
    move-object v6, v1

    .line 341
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v6

    .line 334
    .end local v2    # "apkAbsPath":Ljava/lang/String;
    .restart local v1    # "apkAbsPath":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 336
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 337
    const-string v6, " GetApkAbsPath"

    const-string v7, "getapkpath failed"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v6, "error"

    move-object v2, v1

    .end local v1    # "apkAbsPath":Ljava/lang/String;
    .restart local v2    # "apkAbsPath":Ljava/lang/String;
    goto :goto_0
.end method

.method public acquireWakeLock(Ljava/lang/Object;I)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "lockstate"    # I

    .prologue
    const/4 v2, 0x1

    .line 192
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 193
    .local v0, "activity":Landroid/app/Activity;
    iget-object v3, p0, Lcu_iipsmobile/CuIIPSMobile;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_5

    .line 195
    const-string v3, "power"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 196
    .local v1, "pm":Landroid/os/PowerManager;
    if-ne p2, v2, :cond_0

    .line 198
    const v3, 0x20000001

    const-string v4, "PostLocationService"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcu_iipsmobile/CuIIPSMobile;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 200
    :cond_0
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 202
    const v3, 0x20000006

    const-string v4, "PostLocationService"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcu_iipsmobile/CuIIPSMobile;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 204
    :cond_1
    const/4 v3, 0x3

    if-ne p2, v3, :cond_2

    .line 206
    const v3, 0x2000000a

    const-string v4, "PostLocationService"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcu_iipsmobile/CuIIPSMobile;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 208
    :cond_2
    const/4 v3, 0x4

    if-ne p2, v3, :cond_3

    .line 210
    const v3, 0x2000001a

    const-string v4, "PostLocationService"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcu_iipsmobile/CuIIPSMobile;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 212
    :cond_3
    const/4 v3, 0x5

    if-ne p2, v3, :cond_4

    .line 214
    const/high16 v3, 0x30000000

    const-string v4, "PostLocationService"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcu_iipsmobile/CuIIPSMobile;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 217
    :cond_4
    iget-object v3, p0, Lcu_iipsmobile/CuIIPSMobile;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_5

    .line 219
    iget-object v3, p0, Lcu_iipsmobile/CuIIPSMobile;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 223
    .end local v1    # "pm":Landroid/os/PowerManager;
    :goto_0
    return v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public createWifiLock(Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "locktype"    # I

    .prologue
    .line 258
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    .line 259
    .local v0, "context":Landroid/content/Context;
    const-string v2, "CuIIPSMobile::toggleWiFi"

    const-string v3, "changeobject end"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 261
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    const-string v2, "cu_iipsmobile_wifilock"

    invoke-virtual {v1, p2, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    iput-object v2, p0, Lcu_iipsmobile/CuIIPSMobile;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 262
    iget-object v2, p0, Lcu_iipsmobile/CuIIPSMobile;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public install(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "Path"    # Ljava/lang/String;

    .prologue
    const/4 v13, -0x1

    .line 102
    const/4 v11, 0x4

    new-array v0, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 103
    const-string v12, "pm"

    aput-object v12, v0, v11

    const/4 v11, 0x1

    const-string v12, "install"

    aput-object v12, v0, v11

    const/4 v11, 0x2

    const-string v12, "-r"

    aput-object v12, v0, v11

    const/4 v11, 0x3

    aput-object p1, v0, v11

    .line 105
    .local v0, "args":[Ljava/lang/String;
    const-string v9, ""

    .line 106
    .local v9, "result":Ljava/lang/String;
    new-instance v7, Ljava/lang/ProcessBuilder;

    invoke-direct {v7, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 107
    .local v7, "processBuilder":Ljava/lang/ProcessBuilder;
    const/4 v6, 0x0

    .line 108
    .local v6, "process":Ljava/lang/Process;
    const/4 v4, 0x0

    .line 109
    .local v4, "errIs":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 113
    .local v5, "inIs":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 114
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v8, -0x1

    .line 115
    .local v8, "read":I
    invoke-virtual {v7}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v6

    .line 116
    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 117
    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ne v8, v13, :cond_0

    .line 122
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 123
    :goto_1
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ne v8, v13, :cond_1

    .line 127
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 128
    .local v2, "data":[B
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V

    .end local v9    # "result":Ljava/lang/String;
    .local v10, "result":Ljava/lang/String;
    move-object v9, v10

    .line 135
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v8    # "read":I
    .end local v10    # "result":Ljava/lang/String;
    .restart local v9    # "result":Ljava/lang/String;
    :goto_2
    return-object v9

    .line 119
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "read":I
    :cond_0
    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "read":I
    :catch_0
    move-exception v3

    .line 131
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 125
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "read":I
    :cond_1
    :try_start_1
    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public installAPK(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v7, -0x1

    .line 50
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    .line 51
    .local v0, "activity":Landroid/app/Activity;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v7

    .line 56
    :cond_1
    invoke-virtual {p0, p1}, Lcu_iipsmobile/CuIIPSMobile;->isFileExist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 60
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v3, "file":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 64
    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "root":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "filename":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 80
    .end local v4    # "filename":Ljava/lang/String;
    .end local v6    # "root":Ljava/lang/String;
    :cond_2
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "application/vnd.android.package-archive"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    :try_start_0
    invoke-virtual {v0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    const/4 v7, 0x0

    goto :goto_0

    .line 70
    .end local v5    # "intent":Landroid/content/Intent;
    .restart local v4    # "filename":Ljava/lang/String;
    .restart local v6    # "root":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "chmod 777 "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "cmd":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 72
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1

    .line 73
    .end local v1    # "cmd":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 75
    const/4 v7, -0x2

    goto :goto_0

    .line 87
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v6    # "root":Ljava/lang/String;
    .restart local v5    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 88
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 89
    const/4 v7, -0x3

    goto :goto_0
.end method

.method public isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const/4 v1, 0x1

    .line 46
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOpenNetwork(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 317
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 318
    .local v0, "activity":Landroid/app/Activity;
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 319
    .local v1, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 321
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 323
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isWifiLocked()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcu_iipsmobile/CuIIPSMobile;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcu_iipsmobile/CuIIPSMobile;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockWifi()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 240
    invoke-virtual {p0}, Lcu_iipsmobile/CuIIPSMobile;->isWifiLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    :goto_0
    return v0

    .line 244
    :cond_0
    iget-object v1, p0, Lcu_iipsmobile/CuIIPSMobile;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcu_iipsmobile/CuIIPSMobile;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_0

    .line 251
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseLock()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 279
    iget-object v1, p0, Lcu_iipsmobile/CuIIPSMobile;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcu_iipsmobile/CuIIPSMobile;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcu_iipsmobile/CuIIPSMobile;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 284
    :cond_1
    iget-object v1, p0, Lcu_iipsmobile/CuIIPSMobile;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_0

    .line 290
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseWakeLock()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcu_iipsmobile/CuIIPSMobile;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcu_iipsmobile/CuIIPSMobile;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcu_iipsmobile/CuIIPSMobile;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 233
    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public slientInstall(Ljava/lang/String;)Z
    .locals 8
    .param p1, "Path"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v4, 0x0

    .line 145
    .local v4, "result":Z
    const/4 v3, 0x0

    .line 146
    .local v3, "process":Ljava/lang/Process;
    const/4 v2, 0x0

    .line 148
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string/jumbo v7, "su"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 149
    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 150
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 151
    .local v0, "dataOutputStream":Ljava/io/DataOutputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "chmod 777 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LD_LIBRARY_PATH=/vendor/lib:/system/lib pm install -r "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 152
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 157
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 158
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 159
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 162
    .local v5, "value":I
    if-nez v5, :cond_0

    .line 163
    const/4 v4, 0x1

    .line 173
    .end local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v5    # "value":I
    :goto_0
    return v4

    .line 164
    .restart local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "value":I
    :cond_0
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 165
    const/4 v4, 0x0

    .line 166
    goto :goto_0

    .line 167
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 169
    .end local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v5    # "value":I
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public testnet(Ljava/lang/String;)Z
    .locals 8
    .param p1, "urlstring"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 296
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 297
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 298
    .local v1, "http":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 299
    .local v2, "nRC":I
    const-string v5, "CuIIPSMobile::testnet"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "connect code"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/16 v5, 0xc8

    if-ne v2, v5, :cond_0

    .line 302
    const-string v5, "CuIIPSMobile::testnet"

    const-string/jumbo v6, "testnet net is ok"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    const/4 v4, 0x1

    .line 311
    .end local v1    # "http":Ljava/net/HttpURLConnection;
    .end local v2    # "nRC":I
    .end local v3    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return v4

    .line 309
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public toggleWiFi(Ljava/lang/Object;Z)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "enabled"    # Z

    .prologue
    .line 178
    const-string v2, "CuIIPSMobile::toggleWiFi"

    const-string v3, "starttoggleWiFi"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 179
    check-cast v0, Landroid/content/Context;

    .line 180
    .local v0, "context":Landroid/content/Context;
    const-string v2, "CuIIPSMobile::toggleWiFi"

    const-string v3, "changeobject end"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 182
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    const-string v2, "CuIIPSMobile::toggleWiFi"

    const-string v3, "getservice"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 184
    const-string v2, "CuIIPSMobile::toggleWiFi"

    const-string v3, "enable end"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v2, 0x1

    return v2
.end method
