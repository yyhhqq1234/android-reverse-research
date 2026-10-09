.class public Lcom/google/atap/tango/TangoClientLibLoader;
.super Ljava/lang/Object;
.source "TangoClientLibLoader.java"


# static fields
.field public static final ARCH_ARM32:I = 0x2

.field public static final ARCH_ARM64:I = 0x1

.field public static final ARCH_DEFAULT:I = 0x0

.field public static final ARCH_ERROR:I = -0x2

.field public static final ARCH_FALLBACK:I = -0x1

.field public static final ARCH_X86:I = 0x4

.field public static final ARCH_X86_64:I = 0x3

.field public static final PURE_JAVA_PATH:Z

.field private static final TAG:Ljava/lang/String; = "TangoClientLibLoader"

.field private static final loadedSoArch:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 17
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_6

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/google/atap/tango/TangoClientLibLoader;->PURE_JAVA_PATH:Z

    .line 31
    const/4 v1, -0x2

    .line 32
    .local v1, "loadedSoId":I
    sget-boolean v2, Lcom/google/atap/tango/TangoClientLibLoader;->PURE_JAVA_PATH:Z

    if-nez v2, :cond_7

    .line 33
    const-string v0, "/data/data/com.google.tango/libfiles/"

    .line 34
    .local v0, "basePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    const-string v0, "/data/data/com.projecttango.tango/libfiles/"

    .line 37
    :cond_0
    const-string v2, "TangoClientLibLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "basePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "arm64-v8a/libtango_client_api.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 41
    const/4 v1, 0x1

    .line 42
    const-string v2, "TangoClientLibLoader"

    const-string v3, "Success! Using arm64-v8a/libtango_client_api."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_5

    .line 45
    :goto_1
    if-gez v1, :cond_1

    .line 47
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "armeabi-v7a/libtango_client_api.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x2

    .line 49
    const-string v2, "TangoClientLibLoader"

    const-string v3, "Success! Using armeabi-v7a/libtango_client_api."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_4

    .line 53
    :cond_1
    :goto_2
    if-gez v1, :cond_2

    .line 55
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x86_64/libtango_client_api.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 56
    const/4 v1, 0x3

    .line 57
    const-string v2, "TangoClientLibLoader"

    const-string v3, "Success! Using x86_64/libtango_client_api."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_3

    .line 61
    :cond_2
    :goto_3
    if-gez v1, :cond_3

    .line 63
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x86/libtango_client_api.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x4

    .line 65
    const-string v2, "TangoClientLibLoader"

    const-string v3, "Success! Using x86/libtango_client_api."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_2

    .line 69
    :cond_3
    :goto_4
    if-gez v1, :cond_4

    .line 71
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "default/libtango_client_api.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 72
    const/4 v1, 0x0

    .line 73
    const-string v2, "TangoClientLibLoader"

    const-string v3, "Success! Using default/libtango_client_api."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_1

    .line 77
    :cond_4
    :goto_5
    if-gez v1, :cond_5

    .line 79
    :try_start_5
    const-string/jumbo v2, "tango_client_api"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 80
    const/4 v1, -0x1

    .line 81
    const-string v2, "TangoClientLibLoader"

    const-string v3, "Falling back to libtango_client_api.so symlink."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_0

    .line 89
    .end local v0    # "basePath":Ljava/lang/String;
    :cond_5
    :goto_6
    sput v1, Lcom/google/atap/tango/TangoClientLibLoader;->loadedSoArch:I

    .line 90
    return-void

    .line 17
    .end local v1    # "loadedSoId":I
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 86
    .restart local v1    # "loadedSoId":I
    :cond_7
    const/4 v1, 0x0

    .line 87
    const-string v2, "TangoClientLibLoader"

    const-string v3, "Pure Java path, not loading libtango_client_api.so at all."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 82
    .restart local v0    # "basePath":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_6

    .line 74
    :catch_1
    move-exception v2

    goto :goto_5

    .line 66
    :catch_2
    move-exception v2

    goto :goto_4

    .line 58
    :catch_3
    move-exception v2

    goto :goto_3

    .line 50
    :catch_4
    move-exception v2

    goto/16 :goto_2

    .line 43
    :catch_5
    move-exception v2

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTangoClientApiArch()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/google/atap/tango/TangoClientLibLoader;->loadedSoArch:I

    return v0
.end method

.method public static loadedSuccessfully()Z
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/google/atap/tango/TangoClientLibLoader;->getTangoClientApiArch()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
