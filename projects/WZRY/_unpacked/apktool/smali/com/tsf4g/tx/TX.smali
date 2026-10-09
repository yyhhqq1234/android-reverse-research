.class public Lcom/tsf4g/tx/TX;
.super Ljava/lang/Object;
.source "TX.java"


# static fields
.field public static Instance:Lcom/tsf4g/tx/TX;


# instance fields
.field NetChecker:Lcom/tsf4g/tx/NetworkStateChecker;

.field private mHandler:Landroid/os/Handler;

.field private m_cntxt:Landroid/content/Context;

.field private m_szBundleId:Ljava/lang/String;

.field private m_szCurrentAPN:Ljava/lang/String;

.field private m_szICCIDInfo:Ljava/lang/String;

.field private m_szLatitude:D

.field private m_szLocalIPAddress:Ljava/lang/String;

.field private m_szLongitude:D

.field private m_szModel:Ljava/lang/String;

.field private m_szSignalStrength:I

.field private m_szSysVersion:Ljava/lang/String;

.field private m_szUdid:Ljava/lang/String;

.field paths:Lcom/tsf4g/tx/TXPaths;

.field private savedMainThread:Ljava/lang/Thread;

.field xsystem:Lcom/tsf4g/tx/TXSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "apollo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/tsf4g/tx/TX;

    invoke-direct {v0}, Lcom/tsf4g/tx/TX;-><init>()V

    sput-object v0, Lcom/tsf4g/tx/TX;->Instance:Lcom/tsf4g/tx/TX;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/tsf4g/tx/NetworkStateChecker;

    invoke-direct {v0}, Lcom/tsf4g/tx/NetworkStateChecker;-><init>()V

    iput-object v0, p0, Lcom/tsf4g/tx/TX;->NetChecker:Lcom/tsf4g/tx/NetworkStateChecker;

    .line 25
    iput-object v1, p0, Lcom/tsf4g/tx/TX;->savedMainThread:Ljava/lang/Thread;

    .line 26
    iput-object v1, p0, Lcom/tsf4g/tx/TX;->mHandler:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/tsf4g/tx/TXPaths;

    invoke-direct {v0}, Lcom/tsf4g/tx/TXPaths;-><init>()V

    iput-object v0, p0, Lcom/tsf4g/tx/TX;->paths:Lcom/tsf4g/tx/TXPaths;

    .line 33
    new-instance v0, Lcom/tsf4g/tx/TXSystem;

    invoke-direct {v0}, Lcom/tsf4g/tx/TXSystem;-><init>()V

    iput-object v0, p0, Lcom/tsf4g/tx/TX;->xsystem:Lcom/tsf4g/tx/TXSystem;

    .line 35
    iput-object v1, p0, Lcom/tsf4g/tx/TX;->m_szUdid:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/tsf4g/tx/TX;->m_szBundleId:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/tsf4g/tx/TX;->m_szModel:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/tsf4g/tx/TX;->m_szSysVersion:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/tsf4g/tx/TX;->m_szICCIDInfo:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/tsf4g/tx/TX;->m_szLocalIPAddress:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/tsf4g/tx/TX;->m_szCurrentAPN:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/tsf4g/tx/TX;->m_szSignalStrength:I

    .line 46
    iput-wide v2, p0, Lcom/tsf4g/tx/TX;->m_szLatitude:D

    .line 47
    iput-wide v2, p0, Lcom/tsf4g/tx/TX;->m_szLongitude:D

    .line 28
    return-void
.end method

.method private CreateMainHandler()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/tsf4g/tx/TX$1;

    invoke-direct {v0, p0}, Lcom/tsf4g/tx/TX$1;-><init>(Lcom/tsf4g/tx/TX;)V

    iput-object v0, p0, Lcom/tsf4g/tx/TX;->mHandler:Landroid/os/Handler;

    .line 159
    return-void
.end method

.method private TXcallJNIperform(I)V
    .locals 0
    .param p1, "IntFromJNI"    # I

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/tsf4g/tx/TX;->callJNIperform(I)V

    .line 142
    return-void
.end method

.method static synthetic access$0(Lcom/tsf4g/tx/TX;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tsf4g/tx/TX;->savedMainThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tsf4g/tx/TX;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/tsf4g/tx/TX;->callJNIperform(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/tsf4g/tx/TX;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/tsf4g/tx/TX;->wakeup()V

    return-void
.end method

.method private cacheSystemInfo(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tsf4g/tx/TX;->xsystem:Lcom/tsf4g/tx/TXSystem;

    invoke-virtual {v0, p1}, Lcom/tsf4g/tx/TXSystem;->GetUdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tsf4g/tx/TX;->m_szUdid:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/tsf4g/tx/TX;->xsystem:Lcom/tsf4g/tx/TXSystem;

    invoke-virtual {v0, p1}, Lcom/tsf4g/tx/TXSystem;->GetBundleId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tsf4g/tx/TX;->m_szBundleId:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/tsf4g/tx/TX;->xsystem:Lcom/tsf4g/tx/TXSystem;

    invoke-virtual {v0}, Lcom/tsf4g/tx/TXSystem;->GetModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tsf4g/tx/TX;->m_szModel:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/tsf4g/tx/TX;->xsystem:Lcom/tsf4g/tx/TXSystem;

    invoke-virtual {v0}, Lcom/tsf4g/tx/TXSystem;->GetSysVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tsf4g/tx/TX;->m_szSysVersion:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/tsf4g/tx/TX;->xsystem:Lcom/tsf4g/tx/TXSystem;

    invoke-virtual {v0, p1}, Lcom/tsf4g/tx/TXSystem;->GetICCIDInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tsf4g/tx/TX;->m_szICCIDInfo:Ljava/lang/String;

    .line 115
    return-void
.end method

.method private native callJNIonTXCreate(Lcom/tsf4g/tx/TXPaths;)V
.end method

.method private native callJNIonTest()V
.end method

.method private native callJNIperform(I)V
.end method

.method private callbackFromJNI(I)V
    .locals 4
    .param p1, "IntFromJNI"    # I

    .prologue
    .line 125
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 126
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/tsf4g/tx/TX;->savedMainThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    .line 128
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Main Thread:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tsf4g/tx/TX;->savedMainThread:Ljava/lang/Thread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Current Thread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 129
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/tsf4g/tx/TX;->callJNIperform(I)V

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Main Thread:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tsf4g/tx/TX;->savedMainThread:Ljava/lang/Thread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Current Thread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Send msg to MainThread"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/tsf4g/tx/TX;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1}, Lcom/tsf4g/tx/TX;->sendMsg(Landroid/os/Message;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private checkNetworkState()I
    .locals 2

    .prologue
    .line 120
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TX checkNetworkState"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/tsf4g/tx/TX;->NetChecker:Lcom/tsf4g/tx/NetworkStateChecker;

    iget-object v1, p0, Lcom/tsf4g/tx/TX;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tsf4g/tx/NetworkStateChecker;->CheckNetworkState(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private declared-synchronized sendMsg(Landroid/os/Message;Landroid/os/Handler;)V
    .locals 2
    .param p1, "MessageFromJNI"    # Landroid/os/Message;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tsf4g/tx/TX;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :goto_0
    monitor-exit p0

    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 165
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized wakeup()V
    .locals 1

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public CalculateLocaiton()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tsf4g/tx/TX;->xsystem:Lcom/tsf4g/tx/TXSystem;

    invoke-virtual {v0}, Lcom/tsf4g/tx/TXSystem;->GetLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tsf4g/tx/TX;->m_szLatitude:D

    .line 91
    iget-object v0, p0, Lcom/tsf4g/tx/TX;->xsystem:Lcom/tsf4g/tx/TXSystem;

    invoke-virtual {v0}, Lcom/tsf4g/tx/TXSystem;->GetLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tsf4g/tx/TX;->m_szLongitude:D

    .line 92
    return-void
.end method

.method public CheckCurrentAPN()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tsf4g/tx/TX;->xsystem:Lcom/tsf4g/tx/TXSystem;

    iget-object v1, p0, Lcom/tsf4g/tx/TX;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tsf4g/tx/TXSystem;->GetCurrentAPN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tsf4g/tx/TX;->m_szCurrentAPN:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public CheckLocalIPAddress()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tsf4g/tx/TX;->xsystem:Lcom/tsf4g/tx/TXSystem;

    invoke-virtual {v0}, Lcom/tsf4g/tx/TXSystem;->GetLocalIPAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tsf4g/tx/TX;->m_szLocalIPAddress:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public CheckSignalStrength()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tsf4g/tx/TX;->xsystem:Lcom/tsf4g/tx/TXSystem;

    iget-object v1, p0, Lcom/tsf4g/tx/TX;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tsf4g/tx/TXSystem;->GetSignalStrength(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/tsf4g/tx/TX;->m_szSignalStrength:I

    .line 97
    return-void
.end method

.method public Initialize(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TX Initialize"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tsf4g/tx/TX;->m_cntxt:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/tsf4g/tx/TX;->m_cntxt:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tsf4g/tx/TX;->getPaths(Landroid/content/Context;)V

    .line 70
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/tsf4g/tx/TX;->savedMainThread:Ljava/lang/Thread;

    .line 72
    invoke-direct {p0}, Lcom/tsf4g/tx/TX;->CreateMainHandler()V

    .line 74
    iget-object v0, p0, Lcom/tsf4g/tx/TX;->paths:Lcom/tsf4g/tx/TXPaths;

    invoke-direct {p0, v0}, Lcom/tsf4g/tx/TX;->callJNIonTXCreate(Lcom/tsf4g/tx/TXPaths;)V

    .line 76
    iget-object v0, p0, Lcom/tsf4g/tx/TX;->m_cntxt:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tsf4g/tx/TX;->cacheSystemInfo(Landroid/content/Context;)V

    .line 79
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TX Initialize ends"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public native NetworkStateChangeNotify(I)V
.end method

.method getPaths(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 52
    .local v1, "dataDir":Ljava/io/File;
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 54
    .local v0, "cacheDir":Ljava/io/File;
    iget-object v2, p0, Lcom/tsf4g/tx/TX;->paths:Lcom/tsf4g/tx/TXPaths;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tsf4g/tx/TXPaths;->DataPath:Ljava/lang/String;

    .line 55
    iget-object v2, p0, Lcom/tsf4g/tx/TX;->paths:Lcom/tsf4g/tx/TXPaths;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tsf4g/tx/TXPaths;->CachePath:Ljava/lang/String;

    .line 56
    iget-object v2, p0, Lcom/tsf4g/tx/TX;->paths:Lcom/tsf4g/tx/TXPaths;

    iget-object v3, p0, Lcom/tsf4g/tx/TX;->paths:Lcom/tsf4g/tx/TXPaths;

    iget-object v3, v3, Lcom/tsf4g/tx/TXPaths;->CachePath:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tsf4g/tx/TX;->paths:Lcom/tsf4g/tx/TXPaths;

    iget-object v5, v5, Lcom/tsf4g/tx/TXPaths;->CachePath:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tsf4g/tx/TXPaths;->AppPath:Ljava/lang/String;

    .line 59
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AppPath:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tsf4g/tx/TX;->paths:Lcom/tsf4g/tx/TXPaths;

    iget-object v4, v4, Lcom/tsf4g/tx/TXPaths;->AppPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nCachePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tsf4g/tx/TX;->paths:Lcom/tsf4g/tx/TXPaths;

    iget-object v4, v4, Lcom/tsf4g/tx/TXPaths;->CachePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nDataPath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tsf4g/tx/TX;->paths:Lcom/tsf4g/tx/TXPaths;

    iget-object v4, v4, Lcom/tsf4g/tx/TXPaths;->DataPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    return-void
.end method
