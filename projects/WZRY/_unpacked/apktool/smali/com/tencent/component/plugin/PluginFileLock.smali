.class public final Lcom/tencent/component/plugin/PluginFileLock;
.super Ljava/lang/Object;
.source "PluginFileLock.java"


# static fields
.field private static sPluginFileLock:Lcom/tencent/component/utils/UniqueReadWriteLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/component/utils/UniqueReadWriteLock",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/tencent/component/utils/UniqueReadWriteLock;

    invoke-direct {v0}, Lcom/tencent/component/utils/UniqueReadWriteLock;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/PluginFileLock;->sPluginFileLock:Lcom/tencent/component/utils/UniqueReadWriteLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static readLock(Ljava/lang/String;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 16
    sget-object v0, Lcom/tencent/component/plugin/PluginFileLock;->sPluginFileLock:Lcom/tencent/component/utils/UniqueReadWriteLock;

    invoke-virtual {v0, p0}, Lcom/tencent/component/utils/UniqueReadWriteLock;->readLock(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method public static writeLock(Ljava/lang/String;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-object v0, Lcom/tencent/component/plugin/PluginFileLock;->sPluginFileLock:Lcom/tencent/component/utils/UniqueReadWriteLock;

    invoke-virtual {v0, p0}, Lcom/tencent/component/utils/UniqueReadWriteLock;->writeLock(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method
