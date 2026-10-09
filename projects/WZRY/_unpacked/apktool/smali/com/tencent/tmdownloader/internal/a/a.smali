.class public Lcom/tencent/tmdownloader/internal/a/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;


# static fields
.field protected static a:Lcom/tencent/tmdownloader/internal/a/a;


# instance fields
.field final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmdownloader/internal/a/a;->a:Lcom/tencent/tmdownloader/internal/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    return-void
.end method

.method public static a()Lcom/tencent/tmdownloader/internal/a/a;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/tencent/tmdownloader/internal/a/a;->a:Lcom/tencent/tmdownloader/internal/a/a;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/tencent/tmdownloader/internal/a/a;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/a/a;-><init>()V

    sput-object v0, Lcom/tencent/tmdownloader/internal/a/a;->a:Lcom/tencent/tmdownloader/internal/a/a;

    .line 32
    :cond_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/a/a;->a:Lcom/tencent/tmdownloader/internal/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;)I
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x2

    .line 95
    const-string v0, "ApkDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call startDownload, url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "priority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const-string v0, "ApkDownloadManager"

    const-string v1, "call startDownload, return errCode: 1"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    .line 104
    :cond_0
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/f;->a()Lcom/tencent/tmdownloader/internal/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    const-string v0, "ApkDownloadManager"

    const-string v1, "call startDownload, return errCode: 2"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 107
    goto :goto_0

    .line 111
    :cond_1
    invoke-static {p1}, Lcom/tencent/tmdownloader/internal/a/c;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    const-string v0, "ApkDownloadManager"

    const-string v1, "call startDownload, return errCode: 3"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x3

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {p1, p3}, Lcom/tencent/tmdownloader/internal/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    const-string v0, "ApkDownloadManager"

    const-string v2, "call startDownload, return errCode: 4"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 121
    goto :goto_0

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/d;

    .line 125
    if-nez v0, :cond_d

    .line 127
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a;->a()Lcom/tencent/tmdownloader/internal/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tmdownloader/internal/b/a;->b(Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/d;

    move-result-object v0

    .line 129
    if-nez v0, :cond_a

    .line 130
    new-instance v0, Lcom/tencent/tmdownloader/internal/a/d;

    invoke-direct {v0, p1, p2, p3}, Lcom/tencent/tmdownloader/internal/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 131
    sget-object v1, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_APPID:Ljava/lang/String;

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/tmdownloader/internal/a/d;->t:J

    .line 132
    sget-object v1, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_TASK_PACKNAME:Ljava/lang/String;

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->u:Ljava/lang/String;

    .line 133
    sget-object v1, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_TASK_VERSION:Ljava/lang/String;

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->v:Ljava/lang/String;

    .line 134
    sget-object v1, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_VIA:Ljava/lang/String;

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->B:Ljava/lang/String;

    .line 135
    sget-object v1, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_UIN:Ljava/lang/String;

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/tmdownloader/internal/a/d;->z:J

    .line 136
    sget-object v1, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_UIN_TYPE:Ljava/lang/String;

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->A:Ljava/lang/String;

    .line 137
    sget-object v1, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_CHANNELID:Ljava/lang/String;

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->C:Ljava/lang/String;

    .line 138
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->D:Ljava/lang/String;

    .line 139
    sget-object v1, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->E:Ljava/lang/String;

    .line 140
    sget-object v1, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_DOWNLOADTYPE:Ljava/lang/String;

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    iput v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->F:I

    .line 141
    iget-object v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->a:Ljava/lang/String;

    const-string v3, "resource/tm.android.unknown"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 142
    iput-object p4, v0, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    .line 148
    :cond_4
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/c;->h()Lcom/tencent/tmdownloader/internal/logreport/c;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_6

    .line 150
    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/logreport/c;->a(Lcom/tencent/tmdownloader/internal/a/d;)Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;

    move-result-object v3

    .line 151
    iget v4, v0, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    if-nez v4, :cond_5

    .line 152
    iput-byte v2, v3, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->result:B

    .line 154
    :cond_5
    invoke-virtual {v1, v3}, Lcom/tencent/tmdownloader/internal/logreport/c;->a(Lcom/qq/taf/jce/JceStruct;)V

    .line 155
    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/logreport/c;->c()V

    .line 175
    :cond_6
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_1
    move-object v0, p5

    .line 179
    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Lcom/tencent/tmdownloader/internal/a/d;->a(Ljava/util/HashMap;)V

    .line 183
    iget-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->a:Ljava/lang/String;

    const-string v3, "application/tm.android.apkdiff"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 184
    iget-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/tmdownloader/internal/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 190
    :goto_2
    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/a/d;->a()Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v0, :cond_9

    .line 191
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a;->a()Lcom/tencent/tmdownloader/internal/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tmdownloader/internal/b/a;->a(Ljava/lang/String;)V

    .line 193
    new-instance v1, Lcom/tencent/tmdownloader/internal/a/d;

    invoke-direct {v1, p1, p2, p3}, Lcom/tencent/tmdownloader/internal/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_APPID:Ljava/lang/String;

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/tmdownloader/internal/a/d;->t:J

    .line 196
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_TASK_PACKNAME:Ljava/lang/String;

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->u:Ljava/lang/String;

    .line 197
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_TASK_VERSION:Ljava/lang/String;

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->v:Ljava/lang/String;

    .line 198
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_VIA:Ljava/lang/String;

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->B:Ljava/lang/String;

    .line 199
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_UIN:Ljava/lang/String;

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/tmdownloader/internal/a/d;->z:J

    .line 200
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_UIN_TYPE:Ljava/lang/String;

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->A:Ljava/lang/String;

    .line 201
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_CHANNELID:Ljava/lang/String;

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->C:Ljava/lang/String;

    .line 202
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->D:Ljava/lang/String;

    .line 203
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->E:Ljava/lang/String;

    .line 204
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_DOWNLOADTYPE:Ljava/lang/String;

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v0

    iput v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->F:I

    .line 205
    iget-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->a:Ljava/lang/String;

    const-string v3, "resource/tm.android.unknown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 206
    iput-object p4, v1, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    .line 209
    :cond_7
    check-cast p5, Ljava/util/HashMap;

    invoke-virtual {v1, p5}, Lcom/tencent/tmdownloader/internal/a/d;->a(Ljava/util/HashMap;)V

    .line 210
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/c;->h()Lcom/tencent/tmdownloader/internal/logreport/c;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_9

    .line 217
    invoke-static {v1}, Lcom/tencent/tmdownloader/internal/logreport/c;->a(Lcom/tencent/tmdownloader/internal/a/d;)Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;

    move-result-object v3

    .line 218
    iget v4, v1, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    if-nez v4, :cond_8

    .line 219
    iput-byte v2, v3, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->result:B

    .line 221
    :cond_8
    invoke-virtual {v0, v3}, Lcom/tencent/tmdownloader/internal/logreport/c;->a(Lcom/qq/taf/jce/JceStruct;)V

    .line 222
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/logreport/c;->c()V

    .line 227
    :cond_9
    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/a/d;->d()I

    move-result v0

    .line 228
    const-string v1, "ApkDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call startDownload, return errCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_a
    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/d;->a:Ljava/lang/String;

    const-string v4, "application/tm.android.apkdiff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 163
    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/d;->a:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/tencent/tmdownloader/internal/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 168
    :goto_3
    if-eqz v3, :cond_6

    .line 169
    const-string v0, "ApkDownloadManager"

    const-string v2, "call startDownload, return errCode: 4"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 170
    goto/16 :goto_0

    .line 166
    :cond_b
    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/tmdownloader/internal/a/c;->g(Ljava/lang/String;)Z

    move-result v3

    goto :goto_3

    .line 187
    :cond_c
    iget-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/c;->g(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_2

    :cond_d
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public a(Lcom/tencent/tmdownloader/internal/a/l;)V
    .locals 3

    .prologue
    .line 290
    const-string v0, "ApkDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call AddDownloadListener, dl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/e;->a()Lcom/tencent/tmdownloader/internal/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tmdownloader/internal/a/e;->a(Lcom/tencent/tmdownloader/internal/a/l;)V

    .line 292
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 234
    const-string v0, "ApkDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call pauseDownload, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/d;

    .line 236
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/d;->e()V

    .line 240
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 45
    const-string v0, "ApkDownloadManager"

    const-string v1, "Start to load DownloadInfo list."

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 48
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a;->a()Lcom/tencent/tmdownloader/internal/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 51
    const-string v1, "ApkDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The size of downloadinfo_list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/d;

    .line 54
    const-string v2, "ApkDownloadManager"

    const-string v3, "---------------load download info---------------"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "ApkDownloadManager"

    invoke-virtual {v0, v2}, Lcom/tencent/tmdownloader/internal/a/d;->a(Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/d;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/tencent/tmdownloader/internal/a/d;->a(I)V

    goto :goto_0

    .line 64
    :cond_1
    const-string v0, "ApkDownloadManager"

    const-string v1, "Add NetworkChangedObserver to NetworkMonitorReceiver"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->getInstance()Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->addNetworkChangedObserver(Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;)V

    .line 66
    return-void
.end method

.method public b(Lcom/tencent/tmdownloader/internal/a/l;)V
    .locals 3

    .prologue
    .line 296
    const-string v0, "ApkDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call RemoveDownloadListener, dl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/e;->a()Lcom/tencent/tmdownloader/internal/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tmdownloader/internal/a/e;->b(Lcom/tencent/tmdownloader/internal/a/l;)V

    .line 298
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 244
    const-string v0, "ApkDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call cancelDownload, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/d;

    .line 246
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/d;->f()V

    .line 251
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/d;
    .locals 3

    .prologue
    .line 255
    const-string v0, "ApkDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call queryDownloadInfo, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/d;

    .line 257
    if-nez v0, :cond_0

    .line 258
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a;->a()Lcom/tencent/tmdownloader/internal/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tmdownloader/internal/b/a;->b(Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/d;

    move-result-object v0

    .line 261
    :cond_0
    const/4 v1, 0x0

    .line 262
    if-eqz v0, :cond_1

    .line 263
    iget-object v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->a:Ljava/lang/String;

    const-string v2, "application/tm.android.apkdiff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 264
    iget-object v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/tencent/tmdownloader/internal/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 270
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/d;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 271
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a;->a()Lcom/tencent/tmdownloader/internal/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tmdownloader/internal/b/a;->a(Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x0

    .line 276
    :cond_2
    return-object v0

    .line 266
    :cond_3
    iget-object v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tmdownloader/internal/a/c;->g(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public c()V
    .locals 5

    .prologue
    .line 70
    invoke-static {}, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->getInstance()Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->removeNetworkChangedObserver(Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;)V

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/d;

    .line 81
    iget v3, v0, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 83
    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/d;->b:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/tencent/tmdownloader/internal/a/a;->a(Ljava/lang/String;)V

    .line 85
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    const-string v0, "ApkDownloadManager"

    const-string v2, "Start to save DownloadInfo list."

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a;->a()Lcom/tencent/tmdownloader/internal/b/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/internal/b/a;->a(Ljava/util/ArrayList;)V

    .line 91
    return-void
.end method

.method public d()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/d;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public onNetworkChanged()V
    .locals 8

    .prologue
    .line 303
    const-string v0, "ApkDownloadManager"

    const-string v1, "onNetworkChanged"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/f;->a()Lcom/tencent/tmdownloader/internal/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/f;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 313
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/d;

    .line 317
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/f;->a()Lcom/tencent/tmdownloader/internal/a/f;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/tmdownloader/internal/a/d;->p:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/tencent/tmdownloader/internal/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    iget v3, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    const/16 v4, 0x259

    if-eq v3, v4, :cond_1

    iget v3, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    const/16 v4, 0x25a

    if-eq v3, v4, :cond_1

    iget v3, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    const/16 v4, 0x25d

    if-ne v3, v4, :cond_0

    .line 322
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 323
    iget-wide v6, v0, Lcom/tencent/tmdownloader/internal/a/d;->q:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1d4c0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/d;->d()I

    goto :goto_0

    .line 331
    :cond_2
    return-void
.end method
