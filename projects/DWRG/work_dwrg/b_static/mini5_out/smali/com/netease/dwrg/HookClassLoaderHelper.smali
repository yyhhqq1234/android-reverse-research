.class public Lcom/netease/dwrg/HookClassLoaderHelper;
.super Ljava/lang/Object;
.source "HookClassLoaderHelper.java"


# static fields
.field public static m_need_use_new_so:Z = false

.field public static final m_patched_engine_so_path:Ljava/lang/String; = "neox_lib_new"


# instance fields
.field private m_client_context:Landroid/content/Context;

.field private m_neox_root:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/netease/dwrg/HookClassLoaderHelper;->m_client_context:Landroid/content/Context;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/dwrg/HookClassLoaderHelper;->m_neox_root:Ljava/lang/String;

    return-void
.end method

.method private copySoFolder(Ljava/io/File;Ljava/io/File;)V
    .locals 15

    .line 80
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 83
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 86
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 87
    array-length v0, v1

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 90
    :cond_2
    array-length v2, v1

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v0, v1, v3

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 93
    const-string v5, ".so"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object/from16 v6, p2

    goto :goto_2

    .line 98
    :cond_3
    new-instance v5, Ljava/io/File;

    move-object/from16 v6, p2

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 101
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_4
    const/4 v7, 0x0

    .line 107
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 109
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v12

    const-wide/16 v10, 0x0

    move-object v9, v8

    move-object v14, v7

    invoke-virtual/range {v9 .. v14}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 117
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v7

    move-object v7, v8

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v5, v7

    move-object v7, v8

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v5, v7

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v5, v7

    .line 112
    :goto_1
    :try_start_3
    const-string v8, "NeoXDevice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to copy so file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 116
    :try_start_4
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 117
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 116
    :goto_3
    :try_start_5
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 117
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 119
    :catch_3
    throw v0

    :cond_5
    :goto_4
    return-void
.end method

.method private getNeoxDownloadedLibPath()Ljava/lang/String;
    .locals 3

    .line 133
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/dwrg/HookClassLoaderHelper;->m_neox_root:Ljava/lang/String;

    const-string v2, "neox_lib_new"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getNeoxPatchLibPath()Ljava/lang/String;
    .locals 3

    .line 127
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/dwrg/HookClassLoaderHelper;->m_client_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "neox_lib_new"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installDownloadedSo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 32
    const-string v0, "\n"

    const-string v1, "msg"

    const-string v2, "neox_native_lib_loader_"

    const-string v3, "isClassLoaderHacked"

    iput-object p1, p0, Lcom/netease/dwrg/HookClassLoaderHelper;->m_client_context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/netease/dwrg/HookClassLoaderHelper;->m_neox_root:Ljava/lang/String;

    .line 35
    const-string p2, "neox_native_lib_loader"

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 38
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/netease/dwrg/HookClassLoaderHelper;->getNeoxPatchLibPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 40
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 43
    :cond_0
    const-string v4, "lastMsg"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 45
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/dwrg/Launcher;->removeDirectory(Ljava/lang/String;)Z

    .line 46
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 49
    :cond_1
    iget-object v4, p0, Lcom/netease/dwrg/HookClassLoaderHelper;->m_client_context:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/dwrg/NativeLibararyLoader;->installNavitveLibraryABI(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/netease/dwrg/HookClassLoaderHelper;->getNeoxDownloadedLibPath()Ljava/lang/String;

    move-result-object v4

    .line 52
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, v5, p2}, Lcom/netease/dwrg/HookClassLoaderHelper;->copySoFolder(Ljava/io/File;Ljava/io/File;)V

    .line 54
    invoke-static {v4}, Lcom/netease/dwrg/Launcher;->removeDirectory(Ljava/lang/String;)Z

    .line 55
    new-instance v4, Ljava/io/File;

    const-string v5, "libclient.so"

    invoke-direct {v4, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    sget-object p2, Lcom/netease/dwrg/NativeLibararyLoader;->isClassLoaderHacked:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 57
    sput-boolean p2, Lcom/netease/dwrg/HookClassLoaderHelper;->m_need_use_new_so:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 64
    sget-object p2, Lcom/netease/dwrg/NativeLibararyLoader;->isClassLoaderHacked:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    sget-object v2, Lcom/netease/dwrg/NativeLibararyLoader;->isClassLoaderHacked:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    sget-object v2, Lcom/netease/dwrg/NativeLibararyLoader;->errorMsg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 70
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 61
    :try_start_1
    invoke-static {p2}, Lcom/netease/dwrg/NativeLibararyLoader;->onThrowable(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 64
    sget-object p2, Lcom/netease/dwrg/NativeLibararyLoader;->isClassLoaderHacked:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    sget-object v2, Lcom/netease/dwrg/NativeLibararyLoader;->isClassLoaderHacked:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    sget-object v2, Lcom/netease/dwrg/NativeLibararyLoader;->errorMsg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 70
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :catchall_1
    move-exception p2

    .line 63
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 64
    sget-object v4, Lcom/netease/dwrg/NativeLibararyLoader;->isClassLoaderHacked:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    sget-object v2, Lcom/netease/dwrg/NativeLibararyLoader;->isClassLoaderHacked:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    sget-object v2, Lcom/netease/dwrg/NativeLibararyLoader;->errorMsg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 73
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    throw p2
.end method
