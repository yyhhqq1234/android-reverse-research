.class public Lcom/tencent/android/tpush/service/a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->INTENTCHECK:Lcom/jg/EType;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/tencent/android/tpush/service/a;

.field private static volatile c:Lcom/tencent/android/tpush/service/k;

.field private static volatile d:Lcom/tencent/android/tpush/service/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    sput-object v0, Lcom/tencent/android/tpush/service/a;->b:Lcom/tencent/android/tpush/service/a;

    .line 64
    sput-object v0, Lcom/tencent/android/tpush/service/a;->c:Lcom/tencent/android/tpush/service/k;

    .line 67
    sput-object v0, Lcom/tencent/android/tpush/service/a;->d:Lcom/tencent/android/tpush/service/m;

    .line 138
    const-class v0, Lcom/tencent/android/tpush/service/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/android/tpush/service/a;
    .locals 2

    .prologue
    .line 142
    const-class v1, Lcom/tencent/android/tpush/service/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/a;->b:Lcom/tencent/android/tpush/service/a;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/tencent/android/tpush/service/a;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/a;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/a;->b:Lcom/tencent/android/tpush/service/a;

    .line 145
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/service/a;->b:Lcom/tencent/android/tpush/service/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ILcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 779
    const/4 v0, 0x1

    invoke-static {p1, p4, v0}, Lcom/tencent/android/tpush/service/e/h;->a(ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 781
    const-string v1, "accId"

    iget-wide v2, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->accessId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 782
    iget-object v1, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->account:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->account:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 783
    const-string v1, "account"

    iget-object v2, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->account:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 786
    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    :cond_1
    iget-object v1, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->ticket:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->ticket:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 789
    const-string/jumbo v1, "ticket"

    iget-object v2, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->ticket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    const-string/jumbo v1, "ticketType"

    iget-short v2, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->ticketType:S

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 792
    :cond_2
    iget-object v1, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->deviceId:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->deviceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 793
    const-string v1, "deviceId"

    iget-object v2, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    :cond_3
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 796
    return-void
.end method

.method private a(ILcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterRsp;Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 827
    invoke-static {}, Lcom/tencent/android/tpush/stat/b/c;->b()V

    .line 828
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.REGISTER.RESULT.V3"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    const-string v1, "accId"

    iget-wide v2, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->accessId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 830
    const-string v1, "data"

    iget-object v2, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterRsp;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    const-string v1, "flag"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 832
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 833
    const-string v1, "operation"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 845
    new-instance v1, Lcom/tencent/android/tpush/data/RegisterEntity;

    invoke-direct {v1}, Lcom/tencent/android/tpush/data/RegisterEntity;-><init>()V

    .line 846
    iget-wide v2, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->accessId:J

    iput-wide v2, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->accessId:J

    .line 847
    iget-object v2, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->accessKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->accessKey:Ljava/lang/String;

    .line 848
    iget-object v2, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterRsp;->token:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->token:Ljava/lang/String;

    .line 849
    iput-object p5, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->packageName:Ljava/lang/String;

    .line 850
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->timestamp:J

    .line 851
    invoke-static {v1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->addRegisterInfo(Lcom/tencent/android/tpush/data/RegisterEntity;)V

    .line 855
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterRsp;->token:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/service/cache/CacheManager;->setToken(Landroid/content/Context;Ljava/lang/String;)Z

    .line 857
    invoke-static {p5}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 858
    invoke-virtual {v0, p5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 863
    iget-object v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterRsp;->token:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, p5}, Lcom/tencent/android/tpush/service/a;->a(ILcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/android/tpush/service/channel/b;->a(Z)V

    .line 868
    const-string v0, ""

    .line 870
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 871
    const-string v1, "aidl"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 872
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :goto_0
    return-void

    .line 873
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(ILcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 912
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.UNREGISTER.RESULT.V3"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 913
    const-string v1, "flag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 914
    const-string v1, "operation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 917
    invoke-static {p4}, Lcom/tencent/android/tpush/service/cache/CacheManager;->UnregisterInfoSuccessByPkgName(Ljava/lang/String;)V

    .line 918
    invoke-static {p4}, Lcom/tencent/android/tpush/service/cache/CacheManager;->removeRegisterInfos(Ljava/lang/String;)V

    .line 921
    invoke-static {p4}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 923
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 928
    invoke-direct {p0, p1, p4}, Lcom/tencent/android/tpush/service/a;->a(ILjava/lang/String;)V

    .line 930
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 801
    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lcom/tencent/android/tpush/service/e/h;->a(ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 803
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 804
    return-void
.end method

.method private a(ILjava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 810
    const/4 v0, 0x3

    invoke-static {p1, p4, v0}, Lcom/tencent/android/tpush/service/e/h;->a(ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 812
    const-string/jumbo v1, "tagName"

    invoke-static {p2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    const-string/jumbo v1, "tagFlag"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 814
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 815
    return-void
.end method

.method private a(ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 885
    invoke-static {}, Lcom/tencent/android/tpush/stat/b/c;->b()V

    .line 887
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.REGISTER.RESULT.V3"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 888
    const-string v1, "data"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 890
    const-string v1, "msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    const-string v1, "flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 892
    const-string v1, "operation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 894
    invoke-static {p5}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 895
    invoke-virtual {v0, p5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 900
    iget-object v0, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->token:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, p5}, Lcom/tencent/android/tpush/service/a;->a(ILcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    return-void
.end method

.method private a(ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 940
    sget-object v0, Lcom/tencent/android/tpush/service/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterFailHandler failed with ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.UNREGISTER.RESULT.V3"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 945
    const-string v1, "flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 946
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 947
    const-string v1, "msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    const-string v1, "operation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 950
    invoke-static {p5}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 952
    invoke-virtual {v0, p5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 957
    invoke-direct {p0, p1, p5}, Lcom/tencent/android/tpush/service/a;->a(ILjava/lang/String;)V

    .line 958
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 226
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 229
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {p1, v0}, Lcom/tencent/android/tpush/service/e/h;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->a()Lcom/tencent/android/tpush/service/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/n;->d()V

    .line 233
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/b;

    invoke-direct {v1, p0, p1}, Lcom/tencent/android/tpush/service/b;-><init>(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;J)Z

    .line 242
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/a;ILcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterRsp;Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p6}, Lcom/tencent/android/tpush/service/a;->a(ILcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterRsp;Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/a;ILcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/android/tpush/service/a;->a(ILcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/a;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/android/tpush/service/a;->a(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/a;ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/tencent/android/tpush/service/a;->a(ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/a;ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/tencent/android/tpush/service/a;->a(ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/service/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    if-eqz p0, :cond_1

    .line 204
    sget-object v0, Lcom/tencent/android/tpush/service/a;->c:Lcom/tencent/android/tpush/service/k;

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/tencent/android/tpush/service/a;->c:Lcom/tencent/android/tpush/service/k;

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/common/t;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 208
    sput-object v1, Lcom/tencent/android/tpush/service/a;->c:Lcom/tencent/android/tpush/service/k;

    .line 211
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/service/a;->d:Lcom/tencent/android/tpush/service/m;

    if-eqz v0, :cond_1

    .line 213
    sget-object v0, Lcom/tencent/android/tpush/service/a;->d:Lcom/tencent/android/tpush/service/m;

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/common/t;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 215
    sput-object v1, Lcom/tencent/android/tpush/service/a;->d:Lcom/tencent/android/tpush/service/m;

    .line 218
    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 251
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 254
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/service/c;

    invoke-direct {v2, p0, p1, v0}, Lcom/tencent/android/tpush/service/c;-><init>(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;J)Z

    .line 275
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/a;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    .line 278
    invoke-static {p1}, Lcom/tencent/android/tpush/service/e/a;->a(Landroid/content/Context;)B

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 284
    const-string v1, "com.tencent.android.tpush.action.next.applist.ts.V3"

    invoke-static {p1, v1, v6, v7}, Lcom/tencent/android/tpush/service/e/e;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 285
    const/4 v1, 0x0

    .line 286
    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    .line 295
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 296
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/d;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/tencent/android/tpush/service/d;-><init>(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;J)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 289
    :cond_3
    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0xa4cb800

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    move v0, v1

    goto :goto_1
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    .prologue
    .line 374
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 375
    const-string v4, "accId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 377
    const-string v4, "accKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 378
    const-string v4, "packName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 380
    const-string v4, "account"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 381
    const-string/jumbo v4, "ticket"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 382
    const-string/jumbo v4, "ticketType"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 383
    const-string v4, "qua"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 384
    const-string v5, "appVer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 385
    const-string v5, "reserved"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 387
    const-string v5, "aidl"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 390
    :try_start_0
    invoke-static {v4}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 391
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v4}, Lcom/tencent/android/tpush/service/cache/CacheManager;->setQua(Landroid/content/Context;JLjava/lang/String;)V

    .line 393
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->getEncryptAPKSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 395
    invoke-static {}, Lcom/tencent/android/tpush/service/s;->a()Lcom/tencent/android/tpush/service/s;

    move-result-object v17

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static {}, Lcom/tencent/android/tpush/service/e/c;->a()Ljava/lang/String;

    move-result-object v20

    new-instance v4, Lcom/tencent/android/tpush/service/f;

    move-object/from16 v5, p0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/tencent/android/tpush/service/f;-><init>(Lcom/tencent/android/tpush/service/a;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    move-object/from16 v5, v17

    move-wide/from16 v6, v18

    move-object/from16 v8, v16

    move-object/from16 v9, v20

    move-object/from16 v16, v4

    invoke-virtual/range {v5 .. v16}, Lcom/tencent/android/tpush/service/s;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/t;)V

    .line 465
    invoke-static/range {p1 .. p1}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendAllLocalXGAppList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :cond_1
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v4

    .line 467
    sget-object v5, Lcom/tencent/android/tpush/service/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> register error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    sget-object v5, Lcom/tencent/android/tpush/service/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> register error-> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/a;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private d(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    .prologue
    .line 480
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 481
    const-string v2, "accId"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 482
    const-string v2, "packName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 484
    const-string/jumbo v2, "tagFlag"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 485
    const-string/jumbo v2, "tagName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 488
    invoke-static {}, Lcom/tencent/android/tpush/service/s;->a()Lcom/tencent/android/tpush/service/s;

    move-result-object v9

    new-instance v2, Lcom/tencent/android/tpush/service/g;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/tencent/android/tpush/service/g;-><init>(Lcom/tencent/android/tpush/service/a;JILjava/lang/String;Ljava/lang/String;)V

    move-wide v10, v4

    move-object v12, v8

    move v13, v6

    move-object v14, v7

    move-object v15, v2

    invoke-virtual/range {v9 .. v15}, Lcom/tencent/android/tpush/service/s;->a(JLjava/lang/String;ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/t;)V

    .line 538
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/a;->e(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private e(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    .line 557
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 559
    const-string v0, "accId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    const-string v1, "accKey"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 562
    const-string v1, "packName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 564
    const-string/jumbo v1, "token"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
    invoke-static {v7}, Lcom/tencent/android/tpush/service/cache/CacheManager;->UnregisterInfoByPkgName(Ljava/lang/String;)V

    .line 570
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/s;->a()Lcom/tencent/android/tpush/service/s;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/service/e/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v8, Lcom/tencent/android/tpush/service/h;

    invoke-direct {v8, p0, v0, v7}, Lcom/tencent/android/tpush/service/h;-><init>(Lcom/tencent/android/tpush/service/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/android/tpush/service/s;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/t;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    sget-object v1, Lcom/tencent/android/tpush/service/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> unregister error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/a;->h(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private f(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 641
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 642
    const-string v0, "accId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    const-string/jumbo v1, "token"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 644
    const-string v1, "other_push_type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 645
    const-string v1, "other_push_token"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 646
    invoke-static {}, Lcom/tencent/android/tpush/service/s;->a()Lcom/tencent/android/tpush/service/s;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v7, Lcom/tencent/android/tpush/service/i;

    invoke-direct {v7, p0, v0}, Lcom/tencent/android/tpush/service/i;-><init>(Lcom/tencent/android/tpush/service/a;Ljava/lang/String;)V

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/android/tpush/service/s;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/t;)V

    .line 696
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/a;->d(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private g(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 705
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 706
    const-string v0, "accessId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 707
    const-string v0, "pkgName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 708
    invoke-static {}, Lcom/tencent/android/tpush/service/s;->a()Lcom/tencent/android/tpush/service/s;

    move-result-object v6

    new-instance v0, Lcom/tencent/android/tpush/service/j;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/android/tpush/service/j;-><init>(Lcom/tencent/android/tpush/service/a;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v6, p2, v0}, Lcom/tencent/android/tpush/service/s;->a(Landroid/content/Intent;Lcom/tencent/android/tpush/service/channel/t;)V

    .line 757
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/a;->f(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private h(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 760
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 762
    const-string v0, "debugMode"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 764
    sput-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    .line 765
    if-eqz v0, :cond_1

    .line 766
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/android/tpush/a/a;->a(I)V

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/tencent/android/tpush/a/a;->a(I)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/a;->g(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 154
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 156
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/a;->c:Lcom/tencent/android/tpush/service/k;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/tencent/android/tpush/service/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/android/tpush/service/k;-><init>(Lcom/tencent/android/tpush/service/a;Lcom/tencent/android/tpush/service/b;)V

    sput-object v0, Lcom/tencent/android/tpush/service/a;->c:Lcom/tencent/android/tpush/service/k;

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 161
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    sget-object v1, Lcom/tencent/android/tpush/service/a;->c:Lcom/tencent/android/tpush/service/k;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/tencent/android/tpush/service/a;->d:Lcom/tencent/android/tpush/service/m;

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Lcom/tencent/android/tpush/service/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/android/tpush/service/m;-><init>(Lcom/tencent/android/tpush/service/a;Lcom/tencent/android/tpush/service/b;)V

    sput-object v0, Lcom/tencent/android/tpush/service/a;->d:Lcom/tencent/android/tpush/service/m;

    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    const-string v1, "com.tencent.android.tpush.action.REGISTER.V3"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v1, "com.tencent.android.tpush.action.UNREGISTER.V3"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v1, "com.tencent.android.tpush.action.ENABLE_DEBUG.V3"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "com.tencent.android.tpush.action.MSG_ACK.V3"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "com.tencent.android.tpush.action.TAG.V3"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "com.tencent.android.tpush.action.PUSH_CLICK.RESULT.V3"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "com.tencent.android.tpush.action.PUSH_CANCELLED.RESULT.V3"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v1, "com.tencent.android.tpush.action.ack.sdk2srv.V3"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v1, "com.tencent.android.tpush.action.reserved.act.V3"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v1, "com.tencent.android.tpush.action.UPDATE_OTHER_PUSH_TOKEN.V3"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "com.tencent.android.tpush.action.COMM_REPORT.V3"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    sget-object v1, Lcom/tencent/android/tpush/service/a;->d:Lcom/tencent/android/tpush/service/m;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :cond_1
    :goto_1
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.SERVICE_START.V3"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    const-string v1, "pkg"

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string/jumbo v1, "ver"

    const v2, 0x40466666    # 3.1f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 196
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    :cond_2
    monitor-exit p0

    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    :try_start_3
    sget-object v1, Lcom/tencent/android/tpush/service/a;->a:Ljava/lang/String;

    const-string v2, "registerReceiver"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 188
    :catch_1
    move-exception v0

    .line 189
    :try_start_4
    sget-object v1, Lcom/tencent/android/tpush/service/a;->a:Ljava/lang/String;

    const-string v2, "registerReceiver"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
