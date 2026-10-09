.class public Lcom/tencent/tmgp/sgamece/GetPssTotalThread;
.super Ljava/lang/Thread;
.source "GetPssTotalThread.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "Get Pss Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/tencent/tmgp/sgamece/GetPssTotalThread;->start()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 21
    :goto_0
    :try_start_0
    new-instance v1, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 22
    .local v1, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-static {v1}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 23
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    .line 24
    .local v2, "pssTotal":I
    div-int/lit16 v3, v2, 0x400

    sput v3, Lcom/tencent/tmgp/sgamece/SGameUtility;->pssTotal:I

    .line 26
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    .end local v1    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v2    # "pssTotal":I
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 33
    return-void
.end method
