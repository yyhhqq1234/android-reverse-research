.class public Lcom/netease/download/reporter/ReporetCore;
.super Ljava/lang/Object;
.source "ReporetCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReporetCore"

.field private static name:Ljava/lang/String;

.field private static sReporetCore:Lcom/netease/download/reporter/ReporetCore;


# instance fields
.field private mOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/reporter/ReporetCore;->sReporetCore:Lcom/netease/download/reporter/ReporetCore;

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/netease/download/reporter/ReporetCore;->name:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/download/reporter/ReporetCore;->mOpen:Z

    .line 24
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    sput-object p0, Lcom/netease/download/reporter/ReporetCore;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/netease/download/reporter/ReporetCore;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/netease/download/reporter/ReporetCore;->mOpen:Z

    return v0
.end method

.method public static getInstance()Lcom/netease/download/reporter/ReporetCore;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/netease/download/reporter/ReporetCore;->sReporetCore:Lcom/netease/download/reporter/ReporetCore;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/netease/download/reporter/ReporetCore;

    invoke-direct {v0}, Lcom/netease/download/reporter/ReporetCore;-><init>()V

    sput-object v0, Lcom/netease/download/reporter/ReporetCore;->sReporetCore:Lcom/netease/download/reporter/ReporetCore;

    .line 32
    :cond_0
    sget-object v0, Lcom/netease/download/reporter/ReporetCore;->sReporetCore:Lcom/netease/download/reporter/ReporetCore;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 177
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method


# virtual methods
.method public close(J)V
    .locals 3
    .param p1, "delaytime"    # J

    .prologue
    .line 51
    const-string v0, "ReporetCore"

    const-string v1, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u6301\u4e45\u5316\u7ed3\u675f\uff0c\u53d1\u8d77\u7ed3\u675f\u547d\u4ee4"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/netease/download/reporter/ReporetCore;->finish(J)V

    .line 53
    return-void
.end method

.method public finish(J)V
    .locals 3
    .param p1, "delaytime"    # J

    .prologue
    .line 124
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/reporter/ReporetCore$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/download/reporter/ReporetCore$4;-><init>(Lcom/netease/download/reporter/ReporetCore;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 144
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 146
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "ReporetCore"

    const-string v1, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---ReporetCore \u521d\u59cb\u5316"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/netease/download/reporter/ReporetCore;->startStorageLoop()V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/download/reporter/ReporetCore;->setOpen(Z)V

    .line 45
    return-void
.end method

.method public setOpen(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/netease/download/reporter/ReporetCore;->mOpen:Z

    .line 39
    return-void
.end method

.method public startStorageLoop()V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/reporter/ReporetCore$5;

    invoke-direct {v1, p0}, Lcom/netease/download/reporter/ReporetCore$5;-><init>(Lcom/netease/download/reporter/ReporetCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 171
    return-void
.end method

.method public test()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "ReporetCore"

    const-string v1, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---ReporetCore \u6a21\u62df\u8c03\u7528"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/reporter/ReporetCore$1;

    invoke-direct {v1, p0}, Lcom/netease/download/reporter/ReporetCore$1;-><init>(Lcom/netease/download/reporter/ReporetCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/reporter/ReporetCore$2;

    invoke-direct {v1, p0}, Lcom/netease/download/reporter/ReporetCore$2;-><init>(Lcom/netease/download/reporter/ReporetCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 101
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/reporter/ReporetCore$3;

    invoke-direct {v1, p0}, Lcom/netease/download/reporter/ReporetCore$3;-><init>(Lcom/netease/download/reporter/ReporetCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 120
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    return-void
.end method
