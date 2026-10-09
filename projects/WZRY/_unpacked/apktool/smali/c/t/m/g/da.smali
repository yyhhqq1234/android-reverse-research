.class final Lc/t/m/g/da;
.super Landroid/telephony/PhoneStateListener;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/t/m/g/da$a;
    }
.end annotation


# instance fields
.field volatile a:Z

.field private final b:Lc/t/m/g/cj;

.field private final c:Landroid/telephony/TelephonyManager;

.field private d:Lc/t/m/g/dj;

.field private e:Landroid/telephony/ServiceState;

.field private f:Landroid/os/HandlerThread;

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;

.field private i:Landroid/os/Handler;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/t/m/g/cj;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 31
    iput-object v0, p0, Lc/t/m/g/da;->d:Lc/t/m/g/dj;

    .line 32
    iput-object v0, p0, Lc/t/m/g/da;->e:Landroid/telephony/ServiceState;

    .line 41
    iput-object p1, p0, Lc/t/m/g/da;->b:Lc/t/m/g/cj;

    .line 42
    invoke-virtual {p1}, Lc/t/m/g/cj;->c()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/da;->c:Landroid/telephony/TelephonyManager;

    .line 43
    new-instance v0, Lc/t/m/g/da$1;

    invoke-direct {v0, p0}, Lc/t/m/g/da$1;-><init>(Lc/t/m/g/da;)V

    iput-object v0, p0, Lc/t/m/g/da;->h:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 108
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/da;->b:Lc/t/m/g/cj;

    invoke-virtual {v0}, Lc/t/m/g/cj;->c()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const-string v1, "TxNewCellProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "listenCellState: failed! flags="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lc/t/m/g/da;)V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x401

    invoke-direct {p0, v0}, Lc/t/m/g/da;->a(I)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc/t/m/g/dj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/dj;

    .line 189
    invoke-virtual {v0}, Lc/t/m/g/dj;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v4, p0, Lc/t/m/g/da;->j:Ljava/util/List;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lc/t/m/g/da;->j:Ljava/util/List;

    invoke-virtual {v0}, Lc/t/m/g/dj;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :goto_1
    move-object v1, v0

    .line 193
    goto :goto_0

    .line 194
    :cond_0
    iput-object v2, p0, Lc/t/m/g/da;->j:Ljava/util/List;

    .line 195
    if-eqz v1, :cond_3

    .line 196
    iput-object v1, p0, Lc/t/m/g/da;->d:Lc/t/m/g/dj;

    .line 197
    const-string v0, "TxNewCellProvider"

    const-string v1, "notify"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-boolean v0, p0, Lc/t/m/g/da;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/t/m/g/da;->d:Lc/t/m/g/dj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/t/m/g/da;->b:Lc/t/m/g/cj;

    if-nez v0, :cond_2

    .line 204
    :cond_1
    :goto_2
    return-void

    .line 198
    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/t/m/g/da;->b:Lc/t/m/g/cj;

    iget-object v1, p0, Lc/t/m/g/da;->d:Lc/t/m/g/dj;

    invoke-virtual {v0, v1}, Lc/t/m/g/cj;->b(Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 200
    :cond_3
    const-string v0, "TxNewCellProvider"

    const-string v1, "onTxCellInfoChange: same cell "

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lc/t/m/g/da;)Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lc/t/m/g/da;->c:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic c(Lc/t/m/g/da;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lc/t/m/g/da;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-boolean v0, p0, Lc/t/m/g/da;->a:Z

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 85
    :cond_0
    iput-boolean v1, p0, Lc/t/m/g/da;->a:Z

    .line 87
    invoke-direct {p0, v1}, Lc/t/m/g/da;->a(I)V

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/da;->g:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lc/t/m/g/da;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lc/t/m/g/da;->g:Landroid/os/Handler;

    .line 93
    :cond_1
    iget-object v0, p0, Lc/t/m/g/da;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lc/t/m/g/da;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lc/t/m/g/da;->f:Landroid/os/HandlerThread;

    .line 97
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lc/t/m/g/da;->e:Landroid/telephony/ServiceState;

    .line 98
    iget-object v0, p0, Lc/t/m/g/da;->j:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lc/t/m/g/da;->j:Ljava/util/List;

    .line 101
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    const-string v0, "TxNewCellProvider"

    const-string v1, "shutdown: state=[shutdown]"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/os/Handler;Z)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 54
    iget-boolean v0, p0, Lc/t/m/g/da;->a:Z

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iput-object p1, p0, Lc/t/m/g/da;->i:Landroid/os/Handler;

    .line 58
    iget-object v0, p0, Lc/t/m/g/da;->j:Ljava/util/List;

    if-nez v0, :cond_2

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/t/m/g/da;->j:Ljava/util/List;

    .line 61
    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "new_cell_provider"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc/t/m/g/da;->f:Landroid/os/HandlerThread;

    .line 62
    iget-object v0, p0, Lc/t/m/g/da;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/da;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance v0, Lc/t/m/g/da$a;

    iget-object v1, p0, Lc/t/m/g/da;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lc/t/m/g/da$a;-><init>(Lc/t/m/g/da;Landroid/os/Looper;B)V

    iput-object v0, p0, Lc/t/m/g/da;->g:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_1
    iget-object v0, p0, Lc/t/m/g/da;->g:Landroid/os/Handler;

    iget-object v1, p0, Lc/t/m/g/da;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    if-nez p2, :cond_0

    .line 76
    iget-object v0, p0, Lc/t/m/g/da;->g:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    new-instance v0, Lc/t/m/g/da$a;

    iget-object v1, p0, Lc/t/m/g/da;->i:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lc/t/m/g/da$a;-><init>(Lc/t/m/g/da;Landroid/os/Looper;B)V

    iput-object v0, p0, Lc/t/m/g/da;->g:Landroid/os/Handler;

    goto :goto_1
.end method

.method public final onCellInfoChanged(Ljava/util/List;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x217

    .line 133
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 138
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    iget-object v3, p0, Lc/t/m/g/da;->b:Lc/t/m/g/cj;

    invoke-static {v3, v0}, Lc/t/m/g/dj;->a(Lc/t/m/g/cj;Landroid/telephony/CellInfo;)Lc/t/m/g/dj;

    move-result-object v3

    .line 140
    iget v0, v3, Lc/t/m/g/dj;->b:I

    if-ltz v0, :cond_1

    iget v0, v3, Lc/t/m/g/dj;->c:I

    if-ltz v0, :cond_1

    iget v0, v3, Lc/t/m/g/dj;->b:I

    if-eq v0, v4, :cond_1

    iget v0, v3, Lc/t/m/g/dj;->c:I

    if-ne v0, v4, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 150
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 151
    invoke-direct {p0, v1}, Lc/t/m/g/da;->a(Ljava/util/List;)V

    .line 182
    :cond_4
    :goto_2
    return-void

    .line 155
    :cond_5
    const-string v0, "TxNewCellProvider"

    const-string v1, "cellInfos list is null"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_6
    const-string v0, "TxNewCellProvider"

    const-string v1, "cell info maybe has no rigister"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lc/t/m/g/da;->b:Lc/t/m/g/cj;

    invoke-static {v0}, Lc/t/m/g/dw;->b(Lc/t/m/g/cj;)Landroid/telephony/CellLocation;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_7

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget-object v2, p0, Lc/t/m/g/da;->b:Lc/t/m/g/cj;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lc/t/m/g/dj;->a(Lc/t/m/g/cj;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lc/t/m/g/dj;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-direct {p0, v1}, Lc/t/m/g/da;->a(Ljava/util/List;)V

    goto :goto_2

    .line 175
    :cond_7
    const-string v0, "TxNewCellProvider"

    const-string v1, "cellLocation is still null,so we use the last CellInfo,this happen when restart requestLocationUpdate"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lc/t/m/g/da;->d:Lc/t/m/g/dj;

    if-eqz v0, :cond_4

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    iget-object v1, p0, Lc/t/m/g/da;->d:Lc/t/m/g/dj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-direct {p0, v0}, Lc/t/m/g/da;->a(Ljava/util/List;)V

    goto :goto_2
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 117
    if-nez p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    :try_start_0
    iget-object v2, p0, Lc/t/m/g/da;->e:Landroid/telephony/ServiceState;

    .line 123
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 124
    :cond_2
    iput-object p1, p0, Lc/t/m/g/da;->e:Landroid/telephony/ServiceState;

    .line 125
    iget-boolean v2, p0, Lc/t/m/g/da;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc/t/m/g/da;->e:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lc/t/m/g/da;->e:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v0

    :goto_1
    iget-object v3, p0, Lc/t/m/g/da;->b:Lc/t/m/g/cj;

    invoke-virtual {v3}, Lc/t/m/g/cj;->c()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lc/t/m/g/da;->b:Lc/t/m/g/cj;

    iget-object v4, v4, Lc/t/m/g/cj;->a:Landroid/content/Context;

    invoke-static {v4}, Lc/t/m/g/dw;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_6

    :goto_2
    if-nez v4, :cond_3

    if-nez v0, :cond_7

    :cond_3
    :goto_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x32c7

    iput v2, v0, Landroid/os/Message;->what:I

    const/16 v2, 0x2ee3

    iput v2, v0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lc/t/m/g/da;->b:Lc/t/m/g/cj;

    invoke-virtual {v1, v0}, Lc/t/m/g/cj;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0

    .line 125
    :cond_4
    iget-object v2, p0, Lc/t/m/g/da;->e:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_5

    move v2, v1

    goto :goto_1

    :cond_5
    const/4 v2, -0x1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_2
.end method
