.class public Lcom/tencent/msdk/testplugin/Tester;
.super Ljava/lang/Object;
.source "Tester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/testplugin/Tester$TestUiHandler;
    }
.end annotation


# static fields
.field private static final TEST_DOMAIN:Ljava/lang/String; = "test"

.field private static final TEST_PLUGIN_APK:Ljava/lang/String; = "MSDKTest.apk"

.field public static loginNotifyEalier:Z

.field private static testClassLoader:Ldalvik/system/DexClassLoader;


# instance fields
.field private final TEST_PLUGIN_CLASS_NAME:Ljava/lang/String;

.field private final TEST_PLUGIN_DEX_FOLDER:Ljava/lang/String;

.field private gameActivity:Landroid/app/Activity;

.field private pc:Lcom/tencent/msdk/testplugin/PluginContext;

.field private testPluginClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private uiTestHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/testplugin/Tester;->testClassLoader:Ldalvik/system/DexClassLoader;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/msdk/testplugin/Tester;->loginNotifyEalier:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "gameActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "msdk_test_plugin"

    iput-object v0, p0, Lcom/tencent/msdk/testplugin/Tester;->TEST_PLUGIN_DEX_FOLDER:Ljava/lang/String;

    .line 35
    const-string v0, "com.example.test.wegame.TestMainPanel"

    iput-object v0, p0, Lcom/tencent/msdk/testplugin/Tester;->TEST_PLUGIN_CLASS_NAME:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/Tester;->testPluginClass:Ljava/lang/Class;

    .line 37
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/Tester;->pc:Lcom/tencent/msdk/testplugin/PluginContext;

    .line 38
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/Tester;->gameActivity:Landroid/app/Activity;

    .line 65
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/Tester;->uiTestHandler:Landroid/os/Handler;

    .line 42
    const-string/jumbo v0, "wegame_plugin"

    const-string v1, "start tester..."

    invoke-static {v0, v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/tencent/msdk/testplugin/Tester;->gameActivity:Landroid/app/Activity;

    .line 44
    new-instance v0, Lcom/tencent/msdk/testplugin/Tester$TestUiHandler;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/testplugin/Tester$TestUiHandler;-><init>(Lcom/tencent/msdk/testplugin/Tester;)V

    iput-object v0, p0, Lcom/tencent/msdk/testplugin/Tester;->uiTestHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/msdk/testplugin/Tester;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/testplugin/Tester;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/tencent/msdk/testplugin/Tester;->unzipSo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/msdk/testplugin/Tester;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/testplugin/Tester;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/tencent/msdk/testplugin/Tester;->copyApkFromAsstes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/msdk/testplugin/Tester;)Lcom/tencent/msdk/testplugin/PluginContext;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/testplugin/Tester;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/msdk/testplugin/Tester;->pc:Lcom/tencent/msdk/testplugin/PluginContext;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tencent/msdk/testplugin/Tester;Lcom/tencent/msdk/testplugin/PluginContext;)Lcom/tencent/msdk/testplugin/PluginContext;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/testplugin/Tester;
    .param p1, "x1"    # Lcom/tencent/msdk/testplugin/PluginContext;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tencent/msdk/testplugin/Tester;->pc:Lcom/tencent/msdk/testplugin/PluginContext;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tencent/msdk/testplugin/Tester;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/testplugin/Tester;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/msdk/testplugin/Tester;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/msdk/testplugin/Tester;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/testplugin/Tester;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/msdk/testplugin/Tester;->uiTestHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/msdk/testplugin/Tester;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/testplugin/Tester;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/msdk/testplugin/Tester;->testPluginClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tencent/msdk/testplugin/Tester;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/testplugin/Tester;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tencent/msdk/testplugin/Tester;->testPluginClass:Ljava/lang/Class;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tencent/msdk/testplugin/Tester;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/testplugin/Tester;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/tencent/msdk/testplugin/Tester;->loadTestClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static checkEnv()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 73
    const-string v3, "start check testplugin..."

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 75
    .local v1, "gameActivity":Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 86
    :goto_0
    return v2

    .line 78
    :cond_0
    invoke-static {v1}, Lcom/tencent/msdk/config/ConfigManager;->getApiDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "domain":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "domain:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v3, "test"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    const/4 v2, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const-string v3, "domian not right:test"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private copyApkFromAsstes()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v14, 0x0

    .line 116
    iget-object v12, p0, Lcom/tencent/msdk/testplugin/Tester;->gameActivity:Landroid/app/Activity;

    const-string v13, "msdk_test_plugin"

    invoke-virtual {v12, v13, v14}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "dexOutputDir":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "MSDKTest.apk"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, "testApkFilePath":Ljava/lang/String;
    const/4 v6, 0x0

    .line 119
    .local v6, "inputStream":Ljava/io/InputStream;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v9, "pluginApk":Ljava/io/File;
    :try_start_0
    iget-object v12, p0, Lcom/tencent/msdk/testplugin/Tester;->gameActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const-string v13, "MSDKTest.apk"

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 129
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 130
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    new-array v0, v12, [B

    .line 131
    .local v0, "buffer":[B
    const/4 v7, 0x0

    .line 132
    .local v7, "len":I
    const/4 v8, 0x0

    .line 133
    .local v8, "len4so":I
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_0

    .line 134
    const/4 v12, 0x0

    invoke-virtual {v5, v0, v12, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 140
    .end local v0    # "buffer":[B
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "len":I
    .end local v8    # "len4so":I
    :catch_0
    move-exception v3

    .line 141
    .local v3, "e":Ljava/io/IOException;
    const-string v12, "copy testplugin apk failed... "

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v11

    .line 161
    .end local v2    # "dexOutputDir":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return-object v2

    .line 123
    .restart local v2    # "dexOutputDir":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 124
    .local v4, "e1":Ljava/io/IOException;
    const-string/jumbo v12, "testplugin apk not exists..."

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    move-object v2, v11

    .line 125
    goto :goto_1

    .line 136
    .end local v4    # "e1":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "len":I
    .restart local v8    # "len4so":I
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 137
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 138
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 139
    const-string v12, "copy testplugin apk complete... "

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    const-string/jumbo v11, "wegame_plugin"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dexOutputDir:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :try_start_3
    sget-object v11, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "cpu":Ljava/lang/String;
    const-string/jumbo v11, "wegame_plugin"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Build.CPU_ABI:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v11, "armeabi"

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 152
    const-string v11, "armeab"

    invoke-static {v9, v2, v11}, Lcom/tencent/msdk/testplugin/Tester;->unZipSelectedFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 157
    .end local v1    # "cpu":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 158
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 154
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "cpu":Ljava/lang/String;
    :cond_1
    :try_start_4
    const-string/jumbo v11, "x86"

    invoke-static {v9, v2, v11}, Lcom/tencent/msdk/testplugin/Tester;->unZipSelectedFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1
.end method

.method private getTestClassLoader(Ljava/lang/String;)Ldalvik/system/DexClassLoader;
    .locals 4
    .param p1, "apkFolderPath"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v1, Lcom/tencent/msdk/testplugin/Tester;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/testplugin/Tester;->testClassLoader:Ldalvik/system/DexClassLoader;

    if-eqz v0, :cond_0

    .line 51
    const-string/jumbo v0, "wegame_plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!=null get TestClassLoader:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/msdk/testplugin/Tester;->testClassLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {v3}, Ldalvik/system/DexClassLoader;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/tencent/msdk/testplugin/Tester;->testClassLoader:Ldalvik/system/DexClassLoader;

    monitor-exit v1

    .line 61
    :goto_0
    return-object v0

    .line 56
    :cond_0
    new-instance v0, Ldalvik/system/DexClassLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MSDKTest.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/testplugin/Tester;->gameActivity:Landroid/app/Activity;

    .line 59
    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v0, v2, p1, p1, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/tencent/msdk/testplugin/Tester;->testClassLoader:Ldalvik/system/DexClassLoader;

    .line 60
    const-string/jumbo v0, "wegame_plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get TestClassLoader:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/msdk/testplugin/Tester;->testClassLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {v3}, Ldalvik/system/DexClassLoader;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/tencent/msdk/testplugin/Tester;->testClassLoader:Ldalvik/system/DexClassLoader;

    monitor-exit v1

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadTestClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p1, "apkFolderPath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 202
    const-string/jumbo v3, "wegame_plugin"

    const-string/jumbo v4, "testclass:com.example.test.wegame.TestMainPanel"

    invoke-static {v3, v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string/jumbo v3, "wegame_plugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apkPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "com.example.test.wegame.TestMainPanel"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/tencent/msdk/testplugin/Tester;->getTestClassLoader(Ljava/lang/String;)Ldalvik/system/DexClassLoader;

    move-result-object v1

    .line 205
    .local v1, "localDexClassLoader":Ldalvik/system/DexClassLoader;
    const-string/jumbo v3, "wegame_plugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "testDexClassLoader addr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v2, 0x0

    .line 208
    .local v2, "testClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "com.example.test.wegame.TestMainPanel"

    invoke-virtual {v1, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 212
    :goto_0
    const-string/jumbo v3, "wegame_plugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "testClz:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-object v2

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static unZipSelectedFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 20
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "folderPath"    # Ljava/lang/String;
    .param p2, "nameContains"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    const/high16 v2, 0x100000

    .line 220
    .local v2, "BUFF_SIZE":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v8, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v4, "desDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 224
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 226
    :cond_0
    new-instance v16, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 227
    .local v16, "zf":Ljava/util/zip/ZipFile;
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .local v6, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 228
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 229
    .local v7, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 230
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    .line 231
    .local v10, "in":Ljava/io/InputStream;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 232
    .local v14, "str":Ljava/lang/String;
    new-instance v15, Ljava/lang/String;

    const-string v17, "8859_1"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    const-string v18, "GB2312"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 234
    .end local v14    # "str":Ljava/lang/String;
    .local v15, "str":Ljava/lang/String;
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 235
    .local v13, "slashIndex":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_6

    .line 236
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    add-int/lit8 v18, v13, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 239
    .end local v15    # "str":Ljava/lang/String;
    .restart local v14    # "str":Ljava/lang/String;
    :goto_1
    const-string v17, "Wegame_plugin"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cpu:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v5, "desFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_3

    .line 242
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 243
    .local v9, "fileParentDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_2

    .line 244
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 246
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 248
    .end local v9    # "fileParentDir":Ljava/io/File;
    :cond_3
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 249
    .local v11, "out":Ljava/io/OutputStream;
    new-array v3, v2, [B

    .line 251
    .local v3, "buffer":[B
    :goto_2
    invoke-virtual {v10, v3}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .local v12, "realLength":I
    if-lez v12, :cond_4

    .line 252
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v3, v0, v12}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 254
    :cond_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 255
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 256
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 259
    .end local v3    # "buffer":[B
    .end local v5    # "desFile":Ljava/io/File;
    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v12    # "realLength":I
    .end local v13    # "slashIndex":I
    .end local v14    # "str":Ljava/lang/String;
    :cond_5
    return-object v8

    .restart local v7    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "in":Ljava/io/InputStream;
    .restart local v13    # "slashIndex":I
    .restart local v15    # "str":Ljava/lang/String;
    :cond_6
    move-object v14, v15

    .end local v15    # "str":Ljava/lang/String;
    .restart local v14    # "str":Ljava/lang/String;
    goto :goto_1
.end method

.method private unzipSo()Ljava/lang/String;
    .locals 8

    .prologue
    .line 94
    iget-object v5, p0, Lcom/tencent/msdk/testplugin/Tester;->gameActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "dexOutputDir":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MSDKTest.apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "testApkFilePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, "pluginApk":Ljava/io/File;
    const-string/jumbo v5, "wegame_plugin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dexOutputDir:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :try_start_0
    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "cpu":Ljava/lang/String;
    const-string/jumbo v5, "wegame_plugin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build.CPU_ABI:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v5, "armeabi"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    const-string v5, "armeab"

    invoke-static {v3, v1, v5}, Lcom/tencent/msdk/testplugin/Tester;->unZipSelectedFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 109
    .end local v0    # "cpu":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 104
    .restart local v0    # "cpu":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "x86"

    invoke-static {v3, v1, v5}, Lcom/tencent/msdk/testplugin/Tester;->unZipSelectedFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v0    # "cpu":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public startTest()V
    .locals 4

    .prologue
    .line 165
    invoke-static {}, Lcom/tencent/msdk/testplugin/Tester;->checkEnv()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/msdk/testplugin/Tester$1;

    invoke-direct {v1, p0}, Lcom/tencent/msdk/testplugin/Tester$1;-><init>(Lcom/tencent/msdk/testplugin/Tester;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
