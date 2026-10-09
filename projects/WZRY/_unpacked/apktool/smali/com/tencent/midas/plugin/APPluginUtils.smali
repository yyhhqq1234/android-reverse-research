.class public Lcom/tencent/midas/plugin/APPluginUtils;
.super Ljava/lang/Object;
.source "APPluginUtils.java"


# static fields
.field private static final BUFFER_LENGTH:I = 0x2000

.field private static final HEX_DIGITS:[C

.field private static final TAG:Ljava/lang/String; = "PluginUtils"

.field private static copyFileObject:Ljava/lang/Object;

.field private static emptyResList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static fileList:[Ljava/lang/String;

.field static installErrMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/midas/plugin/APPluginUtils;->HEX_DIGITS:[C

    .line 66
    sput-object v1, Lcom/tencent/midas/plugin/APPluginUtils;->installErrMsg:Ljava/lang/String;

    .line 68
    sput-object v1, Lcom/tencent/midas/plugin/APPluginUtils;->emptyResList:Ljava/util/ArrayList;

    .line 70
    sput-object v1, Lcom/tencent/midas/plugin/APPluginUtils;->fileList:[Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/midas/plugin/APPluginUtils;->copyFileObject:Ljava/lang/Object;

    return-void

    .line 59
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/tencent/midas/plugin/APPluginUtils;->copyFileObject:Ljava/lang/Object;

    return-object v0
.end method

.method static backUp(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "isNeedCheckMD5Copy"    # Z
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "MD5"    # Ljava/lang/String;
    .param p3, "srcPath"    # Ljava/lang/String;

    .prologue
    .line 729
    const/4 v7, 0x0

    .line 731
    .local v7, "sdcardFilePath":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 735
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    :goto_1
    return-void

    .line 732
    :catch_0
    move-exception v6

    .line 733
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 738
    .end local v6    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Tencent/MidasPay/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 739
    move-object v4, v7

    .line 741
    .local v4, "sdcardPath":Ljava/lang/String;
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/midas/plugin/APPluginUtils$1;

    move v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/midas/plugin/APPluginUtils$1;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 760
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method private static callbackInMidasPluginWhenRunningInNewProcess(Landroid/content/Context;ILjava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resultCode"    # I
    .param p2, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 1057
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1058
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "EXTRA_CALLBACK_RESULT_CODE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1059
    const-string v2, "EXTRA_CALLBACK_RESULT_MSG"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    sget-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->MIDAS_PLUGIN_NAME:Ljava/lang/String;

    sget-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->PKG_DISTRIBUTE:Ljava/lang/String;

    const-string v4, "callbackFromMidasPay"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {p0, v2, v3, v4, v5}, Lcom/tencent/midas/plugin/APPluginInterfaceManager;->initPluginInterface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PluginProxyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openPlugin error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static callbackInMidasPluginWithoutCaringAboutNewProcess(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "responseCode"    # I
    .param p2, "responseMsg"    # Ljava/lang/String;

    .prologue
    .line 1027
    if-nez p0, :cond_0

    .line 1028
    const-string v1, "PluginUtils"

    const-string v2, "Call back in plugin without caring process fail, null context!"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    :goto_0
    return-void

    .line 1031
    :cond_0
    const-string v1, "PluginUtils"

    const-string v2, "Call back in plugin without caring process, context ok!"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    invoke-static {p0}, Lcom/tencent/midas/control/APMidasPayHelper;->isNewProcess(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1035
    const-string v1, "PluginUtils"

    const-string v2, "Call back in plugin without caring process, is new process!"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-static {p0, p1, p2}, Lcom/tencent/midas/plugin/APPluginUtils;->callbackInMidasPluginWhenRunningInNewProcess(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 1039
    :cond_1
    const-string v1, "PluginUtils"

    const-string v2, "Call back in plugin without caring process, not new process!"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    new-instance v0, Lcom/tencent/midas/api/APMidasResponse;

    invoke-direct {v0}, Lcom/tencent/midas/api/APMidasResponse;-><init>()V

    .line 1041
    .local v0, "responseInfo":Lcom/tencent/midas/api/APMidasResponse;
    iput p1, v0, Lcom/tencent/midas/api/APMidasResponse;->resultCode:I

    .line 1042
    iput-object p2, v0, Lcom/tencent/midas/api/APMidasResponse;->resultMsg:Ljava/lang/String;

    .line 1043
    invoke-static {v0}, Lcom/tencent/midas/control/APMidasPayHelper;->midasCallBack(Lcom/tencent/midas/api/APMidasResponse;)V

    goto :goto_0
.end method

.method public static checkFileMD5(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "MD5"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 771
    const-string v1, ""

    .line 772
    .local v1, "caculMD5":Ljava/lang/String;
    const/4 v4, 0x0

    .line 775
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 804
    :cond_0
    :goto_0
    return v8

    .line 779
    :cond_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 780
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_1
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 781
    .local v7, "md5":Ljava/security/MessageDigest;
    const/4 v6, 0x0

    .line 782
    .local v6, "len":I
    const/16 v9, 0x2000

    new-array v0, v9, [B

    .line 783
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_3

    .line 784
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 789
    .end local v0    # "buffer":[B
    .end local v6    # "len":I
    .end local v7    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 791
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :goto_2
    if-eqz v4, :cond_2

    .line 793
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 798
    :cond_2
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 801
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 802
    const/4 v8, 0x1

    goto :goto_0

    .line 787
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "len":I
    .restart local v7    # "md5":Ljava/security/MessageDigest;
    :cond_3
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 788
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/midas/plugin/APPluginUtils;->toHexString([B)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    move-object v4, v5

    .line 799
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_4

    .line 794
    .end local v0    # "buffer":[B
    .end local v6    # "len":I
    .end local v7    # "md5":Ljava/security/MessageDigest;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 795
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 789
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method public static clearDirContent(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 192
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 193
    const-string v2, "PluginUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "About to clear dir, path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 196
    .local v1, "fileList":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 209
    .end local v1    # "fileList":[Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 201
    .restart local v1    # "fileList":[Ljava/io/File;
    :cond_1
    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 202
    .local v0, "deletFile":Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 201
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 207
    .end local v0    # "deletFile":Ljava/io/File;
    .end local v1    # "fileList":[Ljava/io/File;
    :cond_3
    const-string v2, "PluginUtils"

    const-string v3, "call clear dir content, but parameter error!"

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static copyDirect(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Ljava/io/File;
    .param p2, "destPath"    # Ljava/io/File;

    .prologue
    .line 936
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 937
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 938
    .local v1, "fileList":[Ljava/io/File;
    if-nez v1, :cond_1

    .line 948
    .end local v1    # "fileList":[Ljava/io/File;
    :cond_0
    return-void

    .line 942
    .restart local v1    # "fileList":[Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 943
    aget-object v0, v1, v3

    .line 944
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 945
    .local v2, "fileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/tencent/midas/plugin/APPluginUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 942
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static copyEmtpyResAPKFromAssets(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 680
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginUtils;->isHasBSL()Z

    move-result v11

    if-nez v11, :cond_1

    .line 719
    :cond_0
    return-void

    .line 683
    :cond_1
    const/4 v4, 0x0

    .line 686
    .local v4, "fileName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 687
    .local v3, "fileList":[Ljava/lang/String;
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginUtils;->getAssetFileList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 688
    if-eqz v3, :cond_0

    .line 692
    array-length v11, v3

    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v0, v3, v10

    .line 695
    .local v0, "assetFile":Ljava/lang/String;
    const-string v12, "MidasEmptyRes"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, ".apk"

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 696
    move-object v4, v0

    .line 697
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getPluginEmptyResPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 698
    .local v8, "meptyResPath":Ljava/lang/String;
    const-string v12, "APPluginUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "copyEmtpyResAPKFromAssets meptyResPath:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 702
    .local v7, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 703
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 704
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 706
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    new-array v9, v12, [B

    .line 707
    .local v9, "temp":[B
    const/4 v6, 0x0

    .line 708
    .local v6, "i":I
    :goto_1
    invoke-virtual {v7, v9}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_3

    .line 709
    const/4 v12, 0x0

    invoke-virtual {v5, v9, v12, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 714
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "i":I
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v9    # "temp":[B
    :catch_0
    move-exception v1

    .line 715
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 692
    .end local v1    # "e":Ljava/io/IOException;
    .end local v8    # "meptyResPath":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 711
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "i":I
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "meptyResPath":Ljava/lang/String;
    .restart local v9    # "temp":[B
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 712
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 713
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;
    .param p2, "destName"    # Ljava/lang/String;
    .param p3, "MD5"    # Ljava/lang/String;

    .prologue
    .line 826
    const-string v12, ""

    .line 827
    .local v12, "sMD5":Ljava/lang/String;
    const/4 v8, 0x0

    .line 828
    .local v8, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 831
    .local v6, "foutOutputStream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 834
    .local v2, "destFile":Ljava/io/File;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .local v9, "inputStream":Ljava/io/InputStream;
    :try_start_1
    const-string v13, "MD5"

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 836
    .local v11, "md5":Ljava/security/MessageDigest;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 837
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 838
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 840
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 843
    .end local v2    # "destFile":Ljava/io/File;
    .local v3, "destFile":Ljava/io/File;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v13

    if-eqz v13, :cond_5

    .line 861
    if-eqz v9, :cond_1

    .line 862
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 865
    :cond_1
    if-eqz v6, :cond_2

    .line 866
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 873
    :cond_2
    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_3

    if-eqz v3, :cond_3

    .line 874
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    move-object v2, v3

    .end local v3    # "destFile":Ljava/io/File;
    .restart local v2    # "destFile":Ljava/io/File;
    move-object v8, v9

    .line 877
    .end local v5    # "file":Ljava/io/File;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "md5":Ljava/security/MessageDigest;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :cond_4
    :goto_1
    return-void

    .line 868
    .end local v2    # "destFile":Ljava/io/File;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "destFile":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .line 869
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 846
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_4
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 847
    .end local v6    # "foutOutputStream":Ljava/io/FileOutputStream;
    .local v7, "foutOutputStream":Ljava/io/FileOutputStream;
    const/4 v10, 0x0

    .line 848
    .local v10, "len":I
    const/16 v13, 0x2000

    :try_start_5
    new-array v1, v13, [B

    .line 849
    .local v1, "buffer":[B
    :goto_2
    invoke-virtual {v9, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v13, -0x1

    if-eq v10, v13, :cond_8

    .line 850
    const/4 v13, 0x0

    invoke-virtual {v7, v1, v13, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 851
    const/4 v13, 0x0

    invoke-virtual {v11, v1, v13, v10}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    .line 856
    .end local v1    # "buffer":[B
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "destFile":Ljava/io/File;
    .restart local v2    # "destFile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "foutOutputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "foutOutputStream":Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 857
    .end local v5    # "file":Ljava/io/File;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "len":I
    .end local v11    # "md5":Ljava/security/MessageDigest;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 861
    if-eqz v8, :cond_6

    .line 862
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 865
    :cond_6
    if-eqz v6, :cond_7

    .line 866
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 873
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_4

    if-eqz v2, :cond_4

    .line 874
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 854
    .end local v2    # "destFile":Ljava/io/File;
    .end local v6    # "foutOutputStream":Ljava/io/FileOutputStream;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "destFile":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "foutOutputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "len":I
    .restart local v11    # "md5":Ljava/security/MessageDigest;
    :cond_8
    :try_start_8
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v13

    invoke-static {v13}, Lcom/tencent/midas/plugin/APPluginUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v12

    .line 855
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 861
    if-eqz v9, :cond_9

    .line 862
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 865
    :cond_9
    if-eqz v7, :cond_a

    .line 866
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 873
    :cond_a
    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_e

    if-eqz v3, :cond_e

    .line 874
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-object v2, v3

    .end local v3    # "destFile":Ljava/io/File;
    .restart local v2    # "destFile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "foutOutputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "foutOutputStream":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 868
    .end local v2    # "destFile":Ljava/io/File;
    .end local v6    # "foutOutputStream":Ljava/io/FileOutputStream;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "destFile":Ljava/io/File;
    .restart local v7    # "foutOutputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    .line 869
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 868
    .end local v1    # "buffer":[B
    .end local v3    # "destFile":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "foutOutputStream":Ljava/io/FileOutputStream;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "len":I
    .end local v11    # "md5":Ljava/security/MessageDigest;
    .restart local v2    # "destFile":Ljava/io/File;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v6    # "foutOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v4

    .line 869
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 860
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 861
    :goto_6
    if-eqz v8, :cond_b

    .line 862
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 865
    :cond_b
    if-eqz v6, :cond_c

    .line 866
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 873
    :cond_c
    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_d

    if-eqz v2, :cond_d

    .line 874
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_d
    throw v13

    .line 868
    :catch_4
    move-exception v4

    .line 869
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 860
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v13

    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_6

    .end local v2    # "destFile":Ljava/io/File;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "destFile":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "md5":Ljava/security/MessageDigest;
    :catchall_2
    move-exception v13

    move-object v2, v3

    .end local v3    # "destFile":Ljava/io/File;
    .restart local v2    # "destFile":Ljava/io/File;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_6

    .end local v2    # "destFile":Ljava/io/File;
    .end local v6    # "foutOutputStream":Ljava/io/FileOutputStream;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "destFile":Ljava/io/File;
    .restart local v7    # "foutOutputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "len":I
    :catchall_3
    move-exception v13

    move-object v2, v3

    .end local v3    # "destFile":Ljava/io/File;
    .restart local v2    # "destFile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "foutOutputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "foutOutputStream":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_6

    .line 856
    .end local v5    # "file":Ljava/io/File;
    .end local v10    # "len":I
    .end local v11    # "md5":Ljava/security/MessageDigest;
    :catch_5
    move-exception v4

    goto :goto_3

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v4

    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v2    # "destFile":Ljava/io/File;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "destFile":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "md5":Ljava/security/MessageDigest;
    :catch_7
    move-exception v4

    move-object v2, v3

    .end local v3    # "destFile":Ljava/io/File;
    .restart local v2    # "destFile":Ljava/io/File;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v2    # "destFile":Ljava/io/File;
    .end local v6    # "foutOutputStream":Ljava/io/FileOutputStream;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "destFile":Ljava/io/File;
    .restart local v7    # "foutOutputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "len":I
    :cond_e
    move-object v2, v3

    .end local v3    # "destFile":Ljava/io/File;
    .restart local v2    # "destFile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "foutOutputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "foutOutputStream":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "srcFile"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;
    .param p2, "destName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 888
    const/4 v7, 0x0

    .line 889
    .local v7, "inputStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 892
    .local v5, "foutOutputStream":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 894
    .local v1, "destFile":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .local v8, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 896
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 897
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 899
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 902
    .end local v1    # "destFile":Ljava/io/File;
    .local v2, "destFile":Ljava/io/File;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v11

    if-eqz v11, :cond_4

    .line 921
    if-eqz v8, :cond_1

    .line 922
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 925
    :cond_1
    if-eqz v5, :cond_2

    .line 926
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_0
    move-object v1, v2

    .end local v2    # "destFile":Ljava/io/File;
    .restart local v1    # "destFile":Ljava/io/File;
    move-object v7, v8

    .line 917
    .end local v4    # "file":Ljava/io/File;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    :cond_3
    :goto_1
    return v10

    .line 928
    .end local v1    # "destFile":Ljava/io/File;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "destFile":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 929
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 905
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_4
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 906
    .end local v5    # "foutOutputStream":Ljava/io/FileOutputStream;
    .local v6, "foutOutputStream":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 907
    .local v9, "len":I
    const/16 v11, 0x2000

    :try_start_5
    new-array v0, v11, [B

    .line 908
    .local v0, "buffer":[B
    :goto_2
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_6

    .line 909
    const/4 v11, 0x0

    invoke-virtual {v6, v0, v11, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    .line 915
    .end local v0    # "buffer":[B
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "destFile":Ljava/io/File;
    .restart local v1    # "destFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "foutOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "foutOutputStream":Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 916
    .end local v4    # "file":Ljava/io/File;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "len":I
    .local v3, "e":Ljava/lang/Exception;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 921
    if-eqz v7, :cond_5

    .line 922
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 925
    :cond_5
    if-eqz v5, :cond_3

    .line 926
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 928
    :catch_2
    move-exception v3

    .line 929
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 912
    .end local v1    # "destFile":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "foutOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "destFile":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "foutOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "len":I
    :cond_6
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 914
    const/4 v10, 0x1

    .line 921
    if-eqz v8, :cond_7

    .line 922
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 925
    :cond_7
    if-eqz v6, :cond_8

    .line 926
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_8
    :goto_4
    move-object v1, v2

    .end local v2    # "destFile":Ljava/io/File;
    .restart local v1    # "destFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "foutOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "foutOutputStream":Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 914
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 928
    .end local v1    # "destFile":Ljava/io/File;
    .end local v5    # "foutOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "destFile":Ljava/io/File;
    .restart local v6    # "foutOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v3

    .line 929
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 920
    .end local v0    # "buffer":[B
    .end local v2    # "destFile":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "foutOutputStream":Ljava/io/FileOutputStream;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "len":I
    .restart local v1    # "destFile":Ljava/io/File;
    .restart local v5    # "foutOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v10

    .line 921
    :goto_5
    if-eqz v7, :cond_9

    .line 922
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 925
    :cond_9
    if-eqz v5, :cond_a

    .line 926
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 930
    :cond_a
    :goto_6
    throw v10

    .line 928
    :catch_4
    move-exception v3

    .line 929
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 920
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    goto :goto_5

    .end local v1    # "destFile":Ljava/io/File;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "destFile":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2    # "destFile":Ljava/io/File;
    .restart local v1    # "destFile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    goto :goto_5

    .end local v1    # "destFile":Ljava/io/File;
    .end local v5    # "foutOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "destFile":Ljava/io/File;
    .restart local v6    # "foutOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "len":I
    :catchall_3
    move-exception v10

    move-object v1, v2

    .end local v2    # "destFile":Ljava/io/File;
    .restart local v1    # "destFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "foutOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "foutOutputStream":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    goto :goto_5

    .line 915
    .end local v4    # "file":Ljava/io/File;
    .end local v9    # "len":I
    :catch_5
    move-exception v3

    goto :goto_3

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v3

    move-object v7, v8

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v1    # "destFile":Ljava/io/File;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "destFile":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "destFile":Ljava/io/File;
    .restart local v1    # "destFile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    goto :goto_3
.end method

.method static deleteBKPlugin(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    const-string v1, "APPluginUtils"

    const-string v2, "deleteUpdatePlugin"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getPluginBackUpPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 249
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/tencent/midas/plugin/APPluginUtils;->deleteFiles(Ljava/io/File;)V

    .line 250
    return-void
.end method

.method public static deleteDex(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    const-string v1, "APPluginUtils"

    const-string v2, "deleteDex"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getOptimizedDexPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 281
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/tencent/midas/plugin/APPluginUtils;->deleteFiles(Ljava/io/File;)V

    .line 282
    return-void
.end method

.method public static deleteFiles(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 217
    if-nez p0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 223
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 224
    .local v1, "fileList":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 228
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 229
    aget-object v0, v1, v2

    .line 230
    .local v0, "deletFile":Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 228
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 235
    .end local v0    # "deletFile":Ljava/io/File;
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 237
    .end local v1    # "fileList":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static deleteLibs(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    const-string v1, "APPluginUtils"

    const-string v2, "deleteLibs"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getLibPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 292
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/tencent/midas/plugin/APPluginUtils;->deleteFiles(Ljava/io/File;)V

    .line 293
    return-void
.end method

.method public static deletePlugin(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    const-string v1, "APPluginUtils"

    const-string v2, "deletePlugin"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getPluginPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 270
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/tencent/midas/plugin/APPluginUtils;->deleteFiles(Ljava/io/File;)V

    .line 271
    return-void
.end method

.method public static deleteUpdatePlugin(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    const-string v1, "PluginUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling into deleteUpdatePlugin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 257
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getPluginUpdatePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 259
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/tencent/midas/plugin/APPluginUtils;->deleteFiles(Ljava/io/File;)V

    .line 260
    return-void
.end method

.method public static extractLibs(Ljava/lang/String;Ljava/lang/String;)I
    .locals 22
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .prologue
    .line 438
    const/4 v13, 0x0

    .line 439
    .local v13, "ret":I
    const/4 v4, 0x0

    .line 441
    .local v4, "dirToExtract":Ljava/lang/String;
    sget-object v19, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v20, "arm64-v8a"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 442
    const-string v4, "arm64-v8a"

    .line 451
    :goto_0
    const-string v19, "APPluginUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "extractLibs end to dirToExtract:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " extractLibs ABI:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 454
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 457
    :cond_0
    const/16 v16, 0x0

    .line 458
    .local v16, "zipFile":Ljava/util/zip/ZipFile;
    const/4 v15, 0x0

    .line 459
    .local v15, "zipEntry":Ljava/util/zip/ZipEntry;
    const/16 v19, 0x0

    sput-object v19, Lcom/tencent/midas/plugin/APPluginUtils;->installErrMsg:Ljava/lang/String;

    .line 461
    :try_start_0
    sget-object v19, Lcom/tencent/midas/plugin/APPluginUtils;->installErrMsg:Ljava/lang/String;

    if-nez v19, :cond_7

    .line 462
    new-instance v17, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 463
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .local v17, "zipFile":Ljava/util/zip/ZipFile;
    const/16 v19, 0x1000

    :try_start_1
    move/from16 v0, v19

    new-array v2, v0, [B

    .line 465
    .local v2, "buffer":[B
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 466
    .local v6, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_11

    .line 467
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/util/zip/ZipEntry;

    move-object v15, v0

    .line 468
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 470
    .local v8, "fileName":Ljava/lang/String;
    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "../"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 473
    const-string v19, "lib"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    const-string v19, ".so"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 477
    :cond_2
    const-string v19, "APPluginUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "fileName:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    new-instance v14, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 480
    .local v14, "tmpOutFile":Ljava/io/File;
    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 482
    .local v11, "nameStart":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v11, v0, :cond_3

    .line 483
    add-int/lit8 v19, v11, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 485
    :cond_3
    new-instance v12, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    .local v12, "outFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 487
    .local v7, "extractThisItem":Z
    :goto_1
    if-eqz v14, :cond_4

    .line 489
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 490
    const/4 v7, 0x1

    .line 495
    :cond_4
    if-eqz v7, :cond_1

    .line 496
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 497
    const/4 v9, 0x0

    .line 498
    .local v9, "fos":Ljava/io/FileOutputStream;
    const/16 v18, 0x0

    .line 500
    .local v18, "zipInput":Ljava/io/InputStream;
    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v18

    .line 501
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "bytesRead":I
    if-lez v3, :cond_c

    .line 504
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v2, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 507
    .end local v3    # "bytesRead":I
    :catch_0
    move-exception v5

    move-object v9, v10

    .line 508
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .local v5, "e":Ljava/io/IOException;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    const-string v19, "extra libs"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "extra lbis error:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-static {v5}, Lcom/tencent/midas/plugin/APPluginUtils;->getFullExceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    sput-object v19, Lcom/tencent/midas/plugin/APPluginUtils;->installErrMsg:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 512
    if-eqz v9, :cond_5

    .line 514
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 516
    :cond_5
    if-eqz v18, :cond_6

    .line 517
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 524
    .end local v5    # "e":Ljava/io/IOException;
    :cond_6
    :goto_4
    :try_start_6
    sget-object v19, Lcom/tencent/midas/plugin/APPluginUtils;->installErrMsg:Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v19, :cond_1

    move-object/from16 v16, v17

    .line 535
    .end local v2    # "buffer":[B
    .end local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v7    # "extractThisItem":Z
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "nameStart":I
    .end local v12    # "outFile":Ljava/io/File;
    .end local v14    # "tmpOutFile":Ljava/io/File;
    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v18    # "zipInput":Ljava/io/InputStream;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_7
    :goto_5
    return v13

    .line 443
    .end local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_8
    sget-object v19, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v20, "arm"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 444
    const-string v4, "armeabi"

    goto/16 :goto_0

    .line 445
    :cond_9
    sget-object v19, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v20, "x86"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 446
    const-string/jumbo v4, "x86"

    goto/16 :goto_0

    .line 448
    :cond_a
    const-string v4, "armeabi"

    goto/16 :goto_0

    .line 493
    .restart local v2    # "buffer":[B
    .restart local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v7    # "extractThisItem":Z
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v11    # "nameStart":I
    .restart local v12    # "outFile":Ljava/io/File;
    .restart local v14    # "tmpOutFile":Ljava/io/File;
    .restart local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v17    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_b
    :try_start_7
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v14

    goto/16 :goto_1

    .line 506
    .restart local v3    # "bytesRead":I
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "zipInput":Ljava/io/InputStream;
    :cond_c
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 512
    if-eqz v10, :cond_d

    .line 514
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 516
    :cond_d
    if-eqz v18, :cond_e

    .line 517
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_e
    move-object v9, v10

    .line 521
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 519
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    .line 520
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .line 522
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 519
    .end local v3    # "bytesRead":I
    :catch_2
    move-exception v5

    .line 520
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_4

    .line 530
    .end local v2    # "buffer":[B
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v7    # "extractThisItem":Z
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "nameStart":I
    .end local v12    # "outFile":Ljava/io/File;
    .end local v14    # "tmpOutFile":Ljava/io/File;
    .end local v18    # "zipInput":Ljava/io/InputStream;
    :catch_3
    move-exception v5

    move-object/from16 v16, v17

    .line 531
    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v5    # "e":Ljava/io/IOException;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_6
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 532
    invoke-static {v5}, Lcom/tencent/midas/plugin/APPluginUtils;->getFullExceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    sput-object v19, Lcom/tencent/midas/plugin/APPluginUtils;->installErrMsg:Ljava/lang/String;

    .line 533
    const/4 v13, -0x1

    goto :goto_5

    .line 511
    .end local v5    # "e":Ljava/io/IOException;
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "buffer":[B
    .restart local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v7    # "extractThisItem":Z
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "nameStart":I
    .restart local v12    # "outFile":Ljava/io/File;
    .restart local v14    # "tmpOutFile":Ljava/io/File;
    .restart local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v18    # "zipInput":Ljava/io/InputStream;
    :catchall_0
    move-exception v19

    .line 512
    :goto_7
    if-eqz v9, :cond_f

    .line 514
    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 516
    :cond_f
    if-eqz v18, :cond_10

    .line 517
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 521
    :cond_10
    :goto_8
    :try_start_c
    throw v19

    .line 519
    :catch_4
    move-exception v5

    .line 520
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_8

    .line 530
    .end local v2    # "buffer":[B
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v7    # "extractThisItem":Z
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "nameStart":I
    .end local v12    # "outFile":Ljava/io/File;
    .end local v14    # "tmpOutFile":Ljava/io/File;
    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v18    # "zipInput":Ljava/io/InputStream;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v5

    goto :goto_6

    .line 511
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "buffer":[B
    .restart local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v7    # "extractThisItem":Z
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "nameStart":I
    .restart local v12    # "outFile":Ljava/io/File;
    .restart local v14    # "tmpOutFile":Ljava/io/File;
    .restart local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v18    # "zipInput":Ljava/io/InputStream;
    :catchall_1
    move-exception v19

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 507
    :catch_6
    move-exception v5

    goto/16 :goto_3

    .end local v7    # "extractThisItem":Z
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "nameStart":I
    .end local v12    # "outFile":Ljava/io/File;
    .end local v14    # "tmpOutFile":Ljava/io/File;
    .end local v18    # "zipInput":Ljava/io/InputStream;
    :cond_11
    move-object/from16 v16, v17

    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_5
.end method

.method private static getAssetFileList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 416
    :try_start_0
    sget-object v4, Lcom/tencent/midas/plugin/APPluginUtils;->fileList:[Ljava/lang/String;

    if-nez v4, :cond_0

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 418
    .local v2, "dateStart":J
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 419
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tencent/midas/plugin/APPluginUtils;->fileList:[Ljava/lang/String;

    .line 421
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {v5}, Lcom/pay/tool/APMidasTools;->getCurrentThreadName(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sdk.plugin.init.getFileListFromAssets.time"

    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/tencent/midas/data/APPluginReportManager;->insertTimeDataEx(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "dateStart":J
    :cond_0
    :goto_0
    sget-object v4, Lcom/tencent/midas/plugin/APPluginUtils;->fileList:[Ljava/lang/String;

    return-object v4

    .line 423
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "APPLuginUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPluginNameFromAssets e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getAssetsVersionCode(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 319
    const/4 v4, 0x0

    .line 320
    .local v4, "versionCode":I
    const-string v3, "MidasPay.zip"

    .line 321
    .local v3, "sUnzipMidasPayFile":Ljava/lang/String;
    const/4 v2, 0x0

    .line 324
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 325
    invoke-static {p0, v2}, Lcom/tencent/midas/plugin/APPluginUtils;->getZipVersionCodeWtihStream(Landroid/content/Context;Ljava/io/InputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 330
    .end local v4    # "versionCode":I
    if-eqz v2, :cond_0

    .line 331
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 338
    :cond_0
    :goto_0
    return v4

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 326
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "versionCode":I
    :catch_1
    move-exception v1

    .line 327
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lcom/tencent/midas/plugin/APPluginUtils;->getFullExceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/tencent/midas/plugin/APPluginUtils;->installErrMsg:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    if-eqz v2, :cond_1

    .line 331
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 337
    :cond_1
    :goto_1
    const-string v5, "assets \u76ee\u5f55\u4e0b\u5185\u6838\u7248\u672c\u53f7\uff1a"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "versionCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :catch_2
    move-exception v0

    .line 334
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 329
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 330
    if-eqz v2, :cond_2

    .line 331
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 335
    :cond_2
    :goto_2
    throw v5

    .line 333
    :catch_3
    move-exception v0

    .line 334
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getDataZipFile(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    invoke-static {}, Lcom/tencent/midas/api/APMidasPayAPI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "sPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    const-string v2, "APPluginUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataZipFile sPath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .local v1, "zipFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MidasPay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    .end local v1    # "zipFile":Ljava/io/File;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 616
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 617
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 619
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 620
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 621
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 622
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getFullExceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 626
    const/4 v3, 0x0

    .line 627
    .local v3, "sw":Ljava/io/StringWriter;
    const/4 v1, 0x0

    .line 630
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    .end local v3    # "sw":Ljava/io/StringWriter;
    .local v4, "sw":Ljava/io/StringWriter;
    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 632
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .local v2, "pw":Ljava/io/PrintWriter;
    :try_start_2
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 633
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    .line 636
    if-eqz v4, :cond_0

    .line 637
    :try_start_3
    invoke-virtual {v4}, Ljava/io/StringWriter;->close()V

    .line 640
    :cond_0
    if-eqz v2, :cond_1

    .line 641
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 633
    :cond_1
    :goto_0
    return-object v5

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 635
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "sw":Ljava/io/StringWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "sw":Ljava/io/StringWriter;
    :catchall_0
    move-exception v5

    .line 636
    :goto_1
    if-eqz v3, :cond_2

    .line 637
    :try_start_4
    invoke-virtual {v3}, Ljava/io/StringWriter;->close()V

    .line 640
    :cond_2
    if-eqz v1, :cond_3

    .line 641
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 645
    :cond_3
    :goto_2
    throw v5

    .line 643
    :catch_1
    move-exception v0

    .line 644
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 635
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "sw":Ljava/io/StringWriter;
    .restart local v4    # "sw":Ljava/io/StringWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "sw":Ljava/io/StringWriter;
    .restart local v3    # "sw":Ljava/io/StringWriter;
    goto :goto_1

    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "sw":Ljava/io/StringWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "sw":Ljava/io/StringWriter;
    :catchall_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    move-object v3, v4

    .end local v4    # "sw":Ljava/io/StringWriter;
    .restart local v3    # "sw":Ljava/io/StringWriter;
    goto :goto_1
.end method

.method public static getInitErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/tencent/midas/plugin/APPluginUtils;->installErrMsg:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstallPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginName"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p0, p1}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->getInstallPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getInstallPathString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginName"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p0, p1}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->getInstallPathString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLibPath(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getLibPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5FromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "installPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 952
    const-string v0, ""

    .line 953
    .local v0, "MD5":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 954
    const-string v4, ".apk"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 955
    .local v2, "endpos":I
    const-string v4, "_"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 957
    .local v3, "startpos":I
    if-eq v2, v5, :cond_0

    if-eq v3, v5, :cond_0

    .line 958
    add-int/lit8 v4, v3, 0x1

    :try_start_0
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 964
    .end local v2    # "endpos":I
    .end local v3    # "startpos":I
    :cond_0
    :goto_0
    return-object v0

    .line 960
    .restart local v2    # "endpos":I
    .restart local v3    # "startpos":I
    :catch_0
    move-exception v1

    .line 961
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMidasCoreVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 545
    const-string v7, ""

    .line 547
    .local v7, "versionName":Ljava/lang/String;
    const-string v3, ""

    .line 548
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getPluginPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 549
    .local v6, "pluginPath":Ljava/io/File;
    if-eqz v6, :cond_0

    .line 550
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 551
    .local v2, "fileList":[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v2

    if-ge v4, v8, :cond_0

    .line 552
    aget-object v1, v2, v4

    .line 553
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MidasCore"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 555
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 563
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileList":[Ljava/io/File;
    .end local v4    # "i":I
    :cond_0
    :goto_1
    invoke-static {p0, v3}, Lcom/tencent/midas/plugin/APPluginUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 564
    .local v5, "info":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_1

    .line 565
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 567
    :cond_1
    return-object v7

    .line 556
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileList":[Ljava/io/File;
    .restart local v4    # "i":I
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 551
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getMidasEmptyPaht(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    sget-object v6, Lcom/tencent/midas/plugin/APPluginUtils;->emptyResList:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 572
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/tencent/midas/plugin/APPluginUtils;->emptyResList:Ljava/util/ArrayList;

    .line 573
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getPluginEmptyResPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 574
    .local v5, "pluginPath":Ljava/io/File;
    if-eqz v5, :cond_1

    .line 575
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 576
    .local v2, "fileList":[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_1

    .line 577
    aget-object v1, v2, v4

    .line 578
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MidasEmptyRes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 580
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "filePath":Ljava/lang/String;
    sget-object v6, Lcom/tencent/midas/plugin/APPluginUtils;->emptyResList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .end local v3    # "filePath":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 589
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileList":[Ljava/io/File;
    .end local v4    # "i":I
    .end local v5    # "pluginPath":Ljava/io/File;
    :cond_1
    sget-object v6, Lcom/tencent/midas/plugin/APPluginUtils;->emptyResList:Ljava/util/ArrayList;

    return-object v6
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkFilePath"    # Ljava/lang/String;

    .prologue
    .line 600
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 601
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 602
    const/4 v0, 0x0

    .line 612
    :cond_0
    :goto_0
    return-object v0

    .line 604
    :cond_1
    sget-object v2, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->sPackageInfoMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 606
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    .line 607
    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 608
    if-eqz v0, :cond_0

    .line 609
    sget-object v2, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->sPackageInfoMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static getZipVersionCodeWtihFileName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sUnzipMidasPayFile"    # Ljava/lang/String;

    .prologue
    .line 388
    const-string v5, "getAssetsVersionCodeWtihFileName"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sUnzipMidasPayFile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/4 v4, 0x0

    .line 390
    .local v4, "versionCode":I
    const/4 v2, 0x0

    .line 392
    .local v2, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .local v3, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {p0, v3}, Lcom/tencent/midas/plugin/APPluginUtils;->getZipVersionCodeWtihStream(Landroid/content/Context;Ljava/io/InputStream;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 399
    .end local v4    # "versionCode":I
    if-eqz v3, :cond_0

    .line 400
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v3

    .line 408
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    :goto_1
    return v4

    .line 402
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 394
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "versionCode":I
    :catch_1
    move-exception v1

    .line 395
    .local v1, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    invoke-static {v1}, Lcom/tencent/midas/plugin/APPluginUtils;->getFullExceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/tencent/midas/plugin/APPluginUtils;->installErrMsg:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 399
    if-eqz v2, :cond_1

    .line 400
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 407
    :cond_1
    :goto_3
    const-string v5, "special data direct"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "versionCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 402
    :catch_2
    move-exception v0

    .line 403
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 398
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 399
    :goto_4
    if-eqz v2, :cond_2

    .line 400
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 404
    :cond_2
    :goto_5
    throw v5

    .line 402
    :catch_3
    move-exception v0

    .line 403
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 398
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 394
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static getZipVersionCodeWtihStream(Landroid/content/Context;Ljava/io/InputStream;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 342
    const/4 v4, 0x0

    .line 343
    .local v4, "versionCode":I
    const/4 v6, 0x0

    .line 344
    .local v6, "zipInputStream":Ljava/util/zip/ZipInputStream;
    const/4 v5, 0x0

    .line 347
    .local v5, "zipEntry":Ljava/util/zip/ZipEntry;
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipInputStream;

    invoke-direct {v7, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    .end local v6    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v7, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 349
    const-string v8, "getAssetsVersionCodeWtihFileName"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "zipEntry:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :goto_0
    if-eqz v5, :cond_2

    .line 351
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "fileName":Ljava/lang/String;
    const-string v8, "getAssetsVersionCodeWtihFileName"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fileName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "../"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 355
    :cond_0
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 356
    goto :goto_0

    .line 358
    :cond_1
    const-string v8, "MidasCore"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, ".jar"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 359
    const-string v8, ".jar"

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 360
    .local v3, "pos":I
    const/4 v8, 0x0

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 361
    const-string v8, "_"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 375
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "pos":I
    :cond_2
    if-eqz v7, :cond_3

    .line 376
    :try_start_2
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v6, v7

    .line 382
    .end local v7    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_4
    :goto_1
    const-string v8, "special data direct"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "versionCode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return v4

    .line 366
    .end local v6    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v7    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_5
    :try_start_3
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 367
    goto :goto_0

    .line 378
    .end local v2    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v7

    .line 381
    .end local v7    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto :goto_1

    .line 368
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 369
    .local v1, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 370
    invoke-static {v1}, Lcom/tencent/midas/plugin/APPluginUtils;->getFullExceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/tencent/midas/plugin/APPluginUtils;->installErrMsg:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 375
    if-eqz v6, :cond_4

    .line 376
    :try_start_5
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 378
    :catch_2
    move-exception v0

    .line 379
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 374
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 375
    :goto_3
    if-eqz v6, :cond_6

    .line 376
    :try_start_6
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 380
    :cond_6
    :goto_4
    throw v8

    .line 378
    :catch_3
    move-exception v0

    .line 379
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 374
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto :goto_3

    .line 368
    .end local v6    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto :goto_2
.end method

.method private static isHasBSL()Z
    .locals 6

    .prologue
    .line 653
    const/4 v1, 0x0

    .line 655
    .local v1, "isHasBSL":Z
    :try_start_0
    const-string v3, "com.tencent.theme.SkinEngine"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 656
    .local v2, "payHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getInstances"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    const/4 v1, 0x1

    .line 665
    .end local v2    # "payHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-nez v1, :cond_0

    .line 667
    :try_start_1
    const-string v3, "com.tencent.component.theme.SkinEngine"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 668
    .restart local v2    # "payHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getInstances"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 669
    const/4 v1, 0x1

    .line 676
    .end local v2    # "payHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    return v1

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 661
    const-string v3, "APPluginContext"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " is not has com.tencent.theme.SkinEngine e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 670
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 671
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 673
    const-string v3, "APPluginContext"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " is not has com.tencent.component.theme.SkinEngine e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static readSingInfo(Ljava/util/HashMap;Ljava/io/File;)V
    .locals 11
    .param p1, "sigIniFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "sigMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 139
    .local v3, "fileReader":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 140
    .local v0, "buf":Ljava/io/BufferedReader;
    new-instance v6, Lcom/tencent/midas/comm/APMidasRSATools;

    invoke-direct {v6}, Lcom/tencent/midas/comm/APMidasRSATools;-><init>()V

    .line 142
    .local v6, "rsa":Lcom/tencent/midas/comm/APMidasRSATools;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, "sline":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_0

    .line 145
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 159
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 165
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "rsa":Lcom/tencent/midas/comm/APMidasRSATools;
    .end local v8    # "sline":Ljava/lang/String;
    :goto_1
    return-void

    .line 148
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "rsa":Lcom/tencent/midas/comm/APMidasRSATools;
    .restart local v8    # "sline":Ljava/lang/String;
    :cond_1
    const-string v9, "\\:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "sigInfo":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v5, v7, v9

    .line 150
    .local v5, "name":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v2, v7, v9

    .line 152
    .local v2, "encodedMD5":Ljava/lang/String;
    invoke-virtual {v6, v2}, Lcom/tencent/midas/comm/APMidasRSATools;->deCodeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "md5":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x20

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 155
    const-string v9, "\\_"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v5, v9, v10

    .line 156
    invoke-virtual {p0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 158
    goto :goto_0

    .line 160
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "encodedMD5":Ljava/lang/String;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .end local v4    # "md5":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "rsa":Lcom/tencent/midas/comm/APMidasRSATools;
    .end local v7    # "sigInfo":[Ljava/lang/String;
    .end local v8    # "sline":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 162
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 163
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static readSingInfoItems(Ljava/util/HashMap;Ljava/io/File;)V
    .locals 12
    .param p1, "sigIniFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/midas/plugin/APSignIniItem;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "sigMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tencent/midas/plugin/APSignIniItem;>;"
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 91
    .local v3, "fileReader":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 92
    .local v0, "buf":Ljava/io/BufferedReader;
    new-instance v6, Lcom/tencent/midas/comm/APMidasRSATools;

    invoke-direct {v6}, Lcom/tencent/midas/comm/APMidasRSATools;-><init>()V

    .line 94
    .local v6, "rsa":Lcom/tencent/midas/comm/APMidasRSATools;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "sline":Ljava/lang/String;
    :goto_0
    if-eqz v9, :cond_0

    .line 97
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 117
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 123
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "rsa":Lcom/tencent/midas/comm/APMidasRSATools;
    .end local v9    # "sline":Ljava/lang/String;
    :goto_1
    return-void

    .line 100
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "rsa":Lcom/tencent/midas/comm/APMidasRSATools;
    .restart local v9    # "sline":Ljava/lang/String;
    :cond_1
    const-string v10, "\\:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "sigInfo":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v5, v7, v10

    .line 102
    .local v5, "name":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v2, v7, v10

    .line 104
    .local v2, "encodedMD5":Ljava/lang/String;
    invoke-virtual {v6, v2}, Lcom/tencent/midas/comm/APMidasRSATools;->deCodeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "md5":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x20

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 107
    const-string v10, "\\_"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v5, v10, v11

    .line 109
    new-instance v8, Lcom/tencent/midas/plugin/APSignIniItem;

    invoke-direct {v8}, Lcom/tencent/midas/plugin/APSignIniItem;-><init>()V

    .line 110
    .local v8, "signIniItem":Lcom/tencent/midas/plugin/APSignIniItem;
    iput-object v5, v8, Lcom/tencent/midas/plugin/APSignIniItem;->name:Ljava/lang/String;

    .line 111
    iput-object v4, v8, Lcom/tencent/midas/plugin/APSignIniItem;->md5:Ljava/lang/String;

    .line 112
    const/4 v10, 0x0

    aget-object v10, v7, v10

    iput-object v10, v8, Lcom/tencent/midas/plugin/APSignIniItem;->fullName:Ljava/lang/String;

    .line 114
    invoke-virtual {p0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 116
    goto :goto_0

    .line 118
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "encodedMD5":Ljava/lang/String;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .end local v4    # "md5":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "rsa":Lcom/tencent/midas/comm/APMidasRSATools;
    .end local v7    # "sigInfo":[Ljava/lang/String;
    .end local v8    # "signIniItem":Lcom/tencent/midas/plugin/APSignIniItem;
    .end local v9    # "sline":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 120
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->sInstallPathMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 297
    sget-object v0, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->sPackageInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 298
    return-void
.end method

.method static showLaunchPluginFail(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "needToPureH5Pay"    # Z

    .prologue
    const/4 v4, 0x0

    .line 986
    const-string v0, "PluginUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling into showLaunchPluginFail, needToPureH5Pay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 987
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 986
    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 991
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v0

    const-string v1, "launchpay"

    const-string v2, "sdk.plugin.launch.error"

    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/midas/data/APPluginReportManager;->reportImmediatelyOneRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    :cond_0
    if-eqz p2, :cond_1

    .line 999
    const-string v0, "showLaunchPluginFail"

    invoke-static {p0, p1, v0}, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->startPureH5Pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1015
    :cond_1
    :goto_0
    return-void

    .line 1003
    :cond_2
    if-eqz p1, :cond_4

    const-string/jumbo v0, "\u7a7a\u95f4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Space"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1004
    :cond_3
    const-string/jumbo v0, "\u7cfb\u7edf\u53ef\u7528\u5185\u5b58\u4e0d\u8db3\uff0c\u8bf7\u9000\u51fa\u91cd\u8bd5"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1012
    :goto_1
    const/16 v0, 0x64

    const-string v1, "Unexpected error!"

    invoke-static {p0, v0, v1}, Lcom/tencent/midas/plugin/APPluginUtils;->callbackInMidasPluginWithoutCaringAboutNewProcess(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 1005
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "webview"

    .line 1006
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Webview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1007
    :cond_5
    const-string/jumbo v0, "\u7cfb\u7edf\u7ec4\u4ef6\u7f3a\u5931\uff0c\u8bf7\u9000\u51fa\u91cd\u8bd5"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1009
    :cond_6
    const-string/jumbo v0, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u9000\u51fa\u91cd\u8bd5"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 809
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 810
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 811
    sget-object v2, Lcom/tencent/midas/plugin/APPluginUtils;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 812
    sget-object v2, Lcom/tencent/midas/plugin/APPluginUtils;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 810
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 814
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static unInstallPlugin(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    const-string v0, "PluginUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unInstallPlugin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->unInstallPlugin(Landroid/content/Context;)V

    .line 180
    return-void
.end method

.method public static updateLibExtendNum()V
    .locals 3

    .prologue
    .line 972
    sget v0, Lcom/tencent/midas/plugin/APPluginConfig;->libExtend:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/midas/plugin/APPluginConfig;->libExtend:I

    .line 973
    const-string v0, "APPluginUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLibExtendNum libExtend:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/midas/plugin/APPluginConfig;->libExtend:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    return-void
.end method
