.class public Lcom/netease/dwrg/NativeLibararyLoader;
.super Ljava/lang/Object;
.source "NativeLibararyLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/dwrg/NativeLibararyLoader$V25;,
        Lcom/netease/dwrg/NativeLibararyLoader$V23;,
        Lcom/netease/dwrg/NativeLibararyLoader$V14;,
        Lcom/netease/dwrg/NativeLibararyLoader$V4;
    }
.end annotation


# static fields
.field public static volatile errorMsg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile isClassLoaderHacked:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netease/dwrg/NativeLibararyLoader;->isClassLoaderHacked:Ljava/lang/Boolean;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/dwrg/NativeLibararyLoader;->errorMsg:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static installNativeLibraryPath(Ljava/lang/ClassLoader;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    .line 75
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x2

    const/16 v4, 0x19

    if-ne v2, v4, :cond_1

    invoke-static {}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v4, :cond_3

    .line 84
    :cond_2
    :try_start_0
    invoke-static {p0, p1}, Lcom/netease/dwrg/NativeLibararyLoader$V25;->access$000(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v2

    .line 89
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Lcom/netease/dwrg/NativeLibararyLoader;->printThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v0

    aput-object v2, v3, v1

    .line 89
    const-string v0, "installNativeLibraryPath, v25 fail, sdk: %d, error: %s, try to fallback to V23"

    invoke-static {v0, v3}, Lcom/netease/dwrg/NativeLibararyLoader;->onError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-static {p0, p1}, Lcom/netease/dwrg/NativeLibararyLoader$V23;->access$100(Ljava/lang/ClassLoader;Ljava/io/File;)V

    goto :goto_0

    .line 93
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_4

    .line 95
    :try_start_1
    invoke-static {p0, p1}, Lcom/netease/dwrg/NativeLibararyLoader$V23;->access$100(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    .line 98
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Lcom/netease/dwrg/NativeLibararyLoader;->printThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v0

    aput-object v2, v3, v1

    .line 98
    const-string v0, "installNativeLibraryPath, v23 fail, sdk: %d, error: %s, try to fallback to V14"

    invoke-static {v0, v3}, Lcom/netease/dwrg/NativeLibararyLoader;->onError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-static {p0, p1}, Lcom/netease/dwrg/NativeLibararyLoader$V14;->access$200(Ljava/lang/ClassLoader;Ljava/io/File;)V

    goto :goto_0

    .line 104
    :cond_4
    invoke-static {p0, p1}, Lcom/netease/dwrg/NativeLibararyLoader$V14;->access$200(Ljava/lang/ClassLoader;Ljava/io/File;)V

    :goto_0
    return-void

    .line 76
    :cond_5
    :goto_1
    new-array p0, v1, [Ljava/lang/Object;

    aput-object p1, p0, v0

    const-string p1, "installNativeLibraryPath, folder %s is illegal"

    invoke-static {p1, p0}, Lcom/netease/dwrg/NativeLibararyLoader;->onError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static installNavitveLibraryABI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "soDir is not exist, path: %s"

    invoke-static {p0, p1}, Lcom/netease/dwrg/NativeLibararyLoader;->onError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-nez p0, :cond_1

    .line 58
    const-string p0, "classloader is null"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/netease/dwrg/NativeLibararyLoader;->onError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "before hack classloader:"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/dwrg/NativeLibararyLoader;->onInfo(Ljava/lang/String;)V

    .line 65
    :try_start_0
    invoke-static {p0, v0}, Lcom/netease/dwrg/NativeLibararyLoader;->installNativeLibraryPath(Ljava/lang/ClassLoader;Ljava/io/File;)V

    .line 66
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/netease/dwrg/NativeLibararyLoader;->isClassLoaderHacked:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 68
    invoke-static {p1}, Lcom/netease/dwrg/NativeLibararyLoader;->printThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "installNativeLibraryPath fail: %s"

    invoke-static {p1, v0}, Lcom/netease/dwrg/NativeLibararyLoader;->onError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "after hack classloader:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/dwrg/NativeLibararyLoader;->onInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs onError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 28
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 29
    :cond_1
    :goto_0
    const-string p1, "NativeLibararyLoader"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object p1, Lcom/netease/dwrg/NativeLibararyLoader;->errorMsg:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static onInfo(Ljava/lang/String;)V
    .locals 1

    .line 34
    const-string v0, "NativeLibararyLoader"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object v0, Lcom/netease/dwrg/NativeLibararyLoader;->errorMsg:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static onThrowable(Ljava/lang/Throwable;)V
    .locals 1

    .line 45
    invoke-static {p0}, Lcom/netease/dwrg/NativeLibararyLoader;->printThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 46
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/netease/dwrg/NativeLibararyLoader;->onError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static printThrowable(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 40
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 41
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
