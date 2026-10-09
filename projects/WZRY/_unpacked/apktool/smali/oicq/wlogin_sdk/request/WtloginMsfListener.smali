.class public Loicq/wlogin_sdk/request/WtloginMsfListener;
.super Ljava/lang/Object;
.source "WtloginMsfListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static CLIENT_CLASSNAME:Ljava/lang/String;

.field static TicketMgr:Ljava/lang/Object;

.field private static final __SyncCB:Ljava/lang/Object;

.field private static final __SyncSeq:Ljava/lang/Object;

.field private static __cbs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Loicq/wlogin_sdk/request/WtloginMsfListener;",
            ">;"
        }
    .end annotation
.end field

.field private static __seq:J


# instance fields
.field private data:[B

.field private flag:Z

.field private ret:I

.field private ret_data:[B

.field private ret_serviceCmd:Ljava/lang/String;

.field private ret_success:Z

.field private ret_uin:Ljava/lang/String;

.field private final semp:Ljava/util/concurrent/Semaphore;

.field private serviceCmd:Ljava/lang/String;

.field private timeout:I

.field private uin:Ljava/lang/String;

.field private userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-string v0, "com.tencent.mobileqq.msf.core.auth.WtProvider"

    sput-object v0, Loicq/wlogin_sdk/request/WtloginMsfListener;->CLIENT_CLASSNAME:Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Loicq/wlogin_sdk/request/WtloginMsfListener;->__SyncSeq:Ljava/lang/Object;

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Loicq/wlogin_sdk/request/WtloginMsfListener;->__SyncCB:Ljava/lang/Object;

    .line 172
    const-wide/16 v0, 0x0

    sput-wide v0, Loicq/wlogin_sdk/request/WtloginMsfListener;->__seq:J

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Loicq/wlogin_sdk/request/WtloginMsfListener;->__cbs:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BIZLoicq/wlogin_sdk/request/WUserSigInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->semp:Ljava/util/concurrent/Semaphore;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_data:[B

    .line 29
    iput-boolean v2, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_success:Z

    .line 32
    if-nez p1, :cond_0

    const-string p1, "0"

    :cond_0
    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->uin:Ljava/lang/String;

    .line 33
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->serviceCmd:Ljava/lang/String;

    .line 34
    if-nez p3, :cond_2

    new-array p3, v2, [B

    :cond_2
    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->data:[B

    .line 35
    if-lez p4, :cond_3

    :goto_0
    iput p4, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->timeout:I

    .line 36
    iput-boolean p5, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->flag:Z

    .line 37
    iput-object p6, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    .line 38
    return-void

    .line 35
    :cond_3
    const/16 p4, 0x1388

    goto :goto_0
.end method

.method private static allocateSeq()J
    .locals 6

    .prologue
    .line 175
    sget-object v1, Loicq/wlogin_sdk/request/WtloginMsfListener;->__SyncSeq:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    sget-wide v2, Loicq/wlogin_sdk/request/WtloginMsfListener;->__seq:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Loicq/wlogin_sdk/request/WtloginMsfListener;->__seq:J

    const-wide/32 v4, 0x7fffffff

    rem-long/2addr v2, v4

    monitor-exit v1

    return-wide v2

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static onAsyncReceive(Ljava/lang/String;Ljava/lang/String;J[B)V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rpc receive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p4, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {p2, p3}, Loicq/wlogin_sdk/request/WtloginMsfListener;->pickSeq(J)Loicq/wlogin_sdk/request/WtloginMsfListener;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p0, p1, p4}, Loicq/wlogin_sdk/request/WtloginMsfListener;->onReceiveData(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 237
    :cond_0
    return-void

    .line 233
    :cond_1
    array-length v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static onAsyncReceiveFail(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rpc receive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {p2, p3}, Loicq/wlogin_sdk/request/WtloginMsfListener;->pickSeq(J)Loicq/wlogin_sdk/request/WtloginMsfListener;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p0, p1, p4}, Loicq/wlogin_sdk/request/WtloginMsfListener;->onReceiveFail(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    :cond_0
    return-void
.end method

.method private static pickSeq(J)Loicq/wlogin_sdk/request/WtloginMsfListener;
    .locals 4

    .prologue
    .line 246
    sget-object v1, Loicq/wlogin_sdk/request/WtloginMsfListener;->__SyncCB:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_0
    sget-object v0, Loicq/wlogin_sdk/request/WtloginMsfListener;->__cbs:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/request/WtloginMsfListener;

    .line 248
    sget-object v2, Loicq/wlogin_sdk/request/WtloginMsfListener;->__cbs:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    monitor-exit v1

    return-object v0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendRPCData([BI)I
    .locals 11

    .prologue
    .line 182
    invoke-static {}, Loicq/wlogin_sdk/request/WtloginMsfListener;->allocateSeq()J

    move-result-wide v2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRPCData seq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :try_start_0
    const-string v0, "mqq.manager.TicketManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 187
    sget-object v1, Loicq/wlogin_sdk/request/WtloginMsfListener;->TicketMgr:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 188
    const-string v1, "com.tencent.common.app.BaseApplicationImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 189
    const-string v4, "mqq.app.BaseActivity"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 190
    const-string v5, "mqq.app.AppRuntime"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 192
    const-string v6, "getApplication"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 193
    const-string/jumbo v7, "waitAppRuntime"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 194
    const-string v4, "getManager"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 195
    const-string v7, "TICKET_MANAGER"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 197
    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 199
    if-eqz v6, :cond_0

    .line 200
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    invoke-virtual {v1, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_0

    .line 202
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v6, v8

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Loicq/wlogin_sdk/request/WtloginMsfListener;->TicketMgr:Ljava/lang/Object;

    .line 207
    :cond_0
    const-string v1, "sendRPCData"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, [B

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 212
    sget-object v1, Loicq/wlogin_sdk/request/WtloginMsfListener;->TicketMgr:Ljava/lang/Object;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 213
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->uin:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->serviceCmd:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 214
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 215
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 212
    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 217
    if-nez v0, :cond_1

    .line 218
    const/16 v0, 0x63

    .line 219
    sget-object v1, Loicq/wlogin_sdk/request/WtloginMsfListener;->__SyncCB:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :try_start_1
    sget-object v4, Loicq/wlogin_sdk/request/WtloginMsfListener;->__cbs:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :try_start_2
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->semp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 230
    :cond_1
    :goto_0
    return v0

    .line 221
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->uin:Ljava/lang/String;

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 227
    const/16 v0, -0x3e8

    goto :goto_0
.end method


# virtual methods
.method public Cancel()V
    .locals 5

    .prologue
    .line 80
    :try_start_0
    sget-object v0, Loicq/wlogin_sdk/request/WtloginMsfListener;->CLIENT_CLASSNAME:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 82
    const-string v1, "cancel"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Loicq/wlogin_sdk/request/WUserSigInfo;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 84
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->uin:Ljava/lang/String;

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public RecvData()[B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 93
    :try_start_0
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->semp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 96
    iget-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_success:Z

    if-nez v1, :cond_0

    .line 120
    :goto_0
    return-object v0

    .line 101
    :cond_0
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_uin:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_uin:Ljava/lang/String;

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->uin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 102
    :cond_1
    const/16 v1, -0x3f1

    iput v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret:I

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret_uin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_uin:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "null"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->uin:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "null"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->uin:Ljava/lang/String;

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    :try_start_1
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_uin:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->uin:Ljava/lang/String;

    goto :goto_2

    .line 107
    :cond_4
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_serviceCmd:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_serviceCmd:Ljava/lang/String;

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->serviceCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 108
    :cond_5
    const/16 v1, -0x3f1

    iput v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret:I

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret_serviceCmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_serviceCmd:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, "null"

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serviceCmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->serviceCmd:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, "null"

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_serviceCmd:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->serviceCmd:Ljava/lang/String;

    goto :goto_4

    .line 114
    :cond_8
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->semp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 117
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_data:[B
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public SendData([BI)I
    .locals 5

    .prologue
    .line 43
    sget-boolean v0, Loicq/wlogin_sdk/request/u;->ap:Z

    if-nez v0, :cond_1

    .line 44
    invoke-static {}, Loicq/wlogin_sdk/request/u;->l()Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqq process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, ":MSF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    invoke-direct {p0, p1, p2}, Loicq/wlogin_sdk/request/WtloginMsfListener;->sendRPCData([BI)I

    move-result v0

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    :try_start_0
    const-string v0, "msf sendData"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v0, Loicq/wlogin_sdk/request/WtloginMsfListener;->CLIENT_CLASSNAME:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    const-string v1, "sendData"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Loicq/wlogin_sdk/request/WUserSigInfo;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, [B

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-class v4, Loicq/wlogin_sdk/request/WtloginMsfListener;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 60
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->uin:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->serviceCmd:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 62
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-boolean v4, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->flag:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object p0, v2, v3

    .line 60
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 65
    if-lez v0, :cond_0

    .line 67
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->semp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->uin:Ljava/lang/String;

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 71
    const/16 v0, -0x3e8

    goto/16 :goto_0
.end method

.method public getRet()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret:I

    return v0
.end method

.method public getRetData()[B
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_data:[B

    return-object v0
.end method

.method public onReceiveData(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_success:Z

    .line 134
    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_uin:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_serviceCmd:Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret:I

    .line 137
    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_data:[B

    .line 140
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->semp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 141
    return-void
.end method

.method public onReceiveFail(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_success:Z

    .line 153
    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_uin:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_serviceCmd:Ljava/lang/String;

    .line 155
    iput p3, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret:I

    .line 158
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->semp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 159
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 256
    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->data:[B

    iget v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->timeout:I

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/request/WtloginMsfListener;->SendData([BI)I

    move-result v0

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret:I

    .line 257
    iget v0, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret:I

    if-gtz v0, :cond_1

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msf request send data failed, ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-virtual {p0}, Loicq/wlogin_sdk/request/WtloginMsfListener;->RecvData()[B

    move-result-object v0

    .line 263
    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginMsfListener;->ret_data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    goto :goto_0
.end method
