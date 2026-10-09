.class public Lcom/tencent/android/tpush/service/c/a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->INTENTSCHEMECHECK:Lcom/jg/EType;,
        .enum Lcom/jg/EType;->INTENTCHECK:Lcom/jg/EType;,
        .enum Lcom/jg/EType;->RECEIVERCHECK:Lcom/jg/EType;
    }
.end annotation


# static fields
.field public static a:J

.field private static b:Lcom/tencent/android/tpush/service/c/a;

.field private static final c:[B

.field private static d:J

.field private static volatile e:Z

.field private static volatile f:Z

.field private static volatile g:Z


# instance fields
.field private h:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/tencent/android/tpush/service/c/a;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/c/a;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/c/a;->b:Lcom/tencent/android/tpush/service/c/a;

    .line 79
    new-array v0, v2, [B

    sput-object v0, Lcom/tencent/android/tpush/service/c/a;->c:[B

    .line 88
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/android/tpush/service/c/a;->d:J

    .line 89
    sput-boolean v2, Lcom/tencent/android/tpush/service/c/a;->e:Z

    .line 91
    sput-boolean v2, Lcom/tencent/android/tpush/service/c/a;->f:Z

    .line 93
    sput-boolean v2, Lcom/tencent/android/tpush/service/c/a;->g:Z

    .line 1227
    const-wide/32 v0, 0x4ab50

    sput-wide v0, Lcom/tencent/android/tpush/service/c/a;->a:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/c/a;->h:Landroid/app/PendingIntent;

    .line 112
    return-void
.end method

.method public static a()Lcom/tencent/android/tpush/service/c/a;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/tencent/android/tpush/service/c/a;->b:Lcom/tencent/android/tpush/service/c/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1284
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/android/tpush/service/e/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1285
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1286
    invoke-static {v0}, Lcom/tencent/android/tpush/common/k;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1290
    :goto_0
    return-object v0

    .line 1287
    :catch_0
    move-exception v0

    .line 1288
    const-string v1, "SrvMessageManager"

    const-string v2, "getSettings"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1290
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 123
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/c/a;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 124
    sget-boolean v3, Lcom/tencent/android/tpush/service/c/a;->e:Z

    if-eqz v3, :cond_0

    .line 125
    const-string v0, "SrvMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> msg ack is uploading , this time will give up! MessageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/tencent/android/tpush/service/c/a;->b(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 131
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 132
    const/4 v3, 0x1

    sput-boolean v3, Lcom/tencent/android/tpush/service/c/a;->e:Z

    .line 133
    sput-wide v0, Lcom/tencent/android/tpush/service/c/a;->d:J

    .line 139
    :goto_1
    const/4 v0, 0x5

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/a/a;->a(ILjava/util/List;)V

    .line 140
    invoke-static {}, Lcom/tencent/android/tpush/service/s;->a()Lcom/tencent/android/tpush/service/s;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/c/b;

    invoke-direct {v1, p0, v2, p1}, Lcom/tencent/android/tpush/service/c/b;-><init>(Lcom/tencent/android/tpush/service/c/a;Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Lcom/tencent/android/tpush/service/s;->a(Ljava/util/ArrayList;Lcom/tencent/android/tpush/service/channel/t;)V

    goto :goto_0

    .line 135
    :cond_1
    const-string v0, "SrvMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null report list with msgId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 1270
    :try_start_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 1271
    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {p4, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1273
    :cond_0
    invoke-static {p4}, Lcom/tencent/android/tpush/common/k;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    .line 1274
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/tencent/android/tpush/service/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    :goto_0
    return-void

    .line 1276
    :catch_0
    move-exception v0

    .line 1277
    const-string v1, "SrvMessageManager"

    const-string v2, "putSettings"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/c/a;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/c/a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/c/a;Landroid/content/Context;Lcom/tencent/android/tpush/data/MessageId;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/c/a;->b(Landroid/content/Context;Lcom/tencent/android/tpush/data/MessageId;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/c/a;Landroid/content/Context;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/lang/Long;)V

    return-void
.end method

.method private a(Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;JLcom/tencent/android/tpush/service/channel/a;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 1087
    new-instance v2, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.INTERNAL_PUSH_MESSAGE"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1088
    iget-object v1, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1089
    const-string v1, "msgId"

    iget-wide v4, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->msgId:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1090
    const-string/jumbo v1, "title"

    iget-object v3, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->title:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
    const-string v1, "content"

    iget-object v3, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->content:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    const-string v1, "date"

    iget-object v3, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->date:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    const-string/jumbo v1, "type"

    iget-wide v4, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->type:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1094
    const-string v1, "accId"

    iget-wide v4, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->accessId:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1095
    const-string v1, "busiMsgId"

    iget-wide v4, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->busiMsgId:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1096
    const-string/jumbo v1, "timestamps"

    iget-wide v4, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1097
    const-string v1, "multiPkg"

    iget-wide v4, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->multiPkg:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1098
    const-string v1, "server_time"

    iget-wide v4, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->serverTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1099
    const-string/jumbo v1, "ttl"

    iget v3, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1102
    const-string/jumbo v1, "svrAck"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1104
    const-string/jumbo v1, "svrPkgName"

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    :try_start_0
    const-string v1, "enKeySet"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "content"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/tencent/android/tpush/common/k;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    :goto_0
    const-string v1, "extra_host"

    invoke-virtual {p4}, Lcom/tencent/android/tpush/service/channel/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/service/e/h;->c(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1118
    const-string v1, "extra_port"

    invoke-virtual {p4}, Lcom/tencent/android/tpush/service/channel/a;->e()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1119
    const-string v1, "extra_pact"

    invoke-virtual {p4}, Lcom/tencent/android/tpush/service/channel/a;->b()Z

    move-result v3

    invoke-static {v3}, Lcom/tencent/android/tpush/service/s;->a(Z)B

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1120
    const-string v1, "extra_push_time"

    invoke-virtual {v2, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1123
    iget-wide v4, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->multiPkg:J

    .line 1124
    iget-wide v6, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->accessId:J

    .line 1125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-nez v1, :cond_2

    .line 1127
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    :cond_0
    :goto_1
    const-string v1, "SrvMessageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "distribute2SDK pkgs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 1135
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1137
    :try_start_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1140
    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1141
    const-string v0, "SrvMessageManager"

    const-string v4, ">> msg.appPkgName is null!"

    invoke-static {v0, v4}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1135
    :cond_1
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1112
    :catch_0
    move-exception v1

    .line 1113
    const-string v3, "SrvMessageManager"

    const-string v4, "distribute2SDK"

    invoke-static {v3, v4, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1129
    :cond_2
    invoke-static {v6, v7}, Lcom/tencent/android/tpush/service/cache/CacheManager;->findValidPackageByAccessid(J)Ljava/lang/String;

    move-result-object v1

    .line 1130
    invoke-static {v1}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1131
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1145
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v6, v7}, Lcom/tencent/android/tpush/service/e/h;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1147
    const-string v4, "SrvMessageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchMessageOnTime appPkgName "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " is not installed."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-static {}, Lcom/tencent/android/tpush/service/s;->a()Lcom/tencent/android/tpush/service/s;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tencent/android/tpush/service/s;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 1175
    :catch_1
    move-exception v0

    .line 1176
    const-string v4, "SrvMessageManager"

    const-string v5, "dispatchMessageOnTime"

    invoke-static {v4, v5, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1157
    :cond_4
    :try_start_3
    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfoByPkgName(Ljava/lang/String;)Lcom/tencent/android/tpush/data/RegisterEntity;

    move-result-object v4

    .line 1159
    if-eqz v4, :cond_1

    .line 1162
    iget v4, v4, Lcom/tencent/android/tpush/data/RegisterEntity;->state:I

    if-gtz v4, :cond_1

    .line 1170
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/c/a;->c()V

    .line 1174
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2}, Lcom/tencent/android/tpush/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 1179
    :cond_5
    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 56
    sput-boolean p0, Lcom/tencent/android/tpush/service/c/a;->e:Z

    return p0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 552
    const/4 v1, 0x0

    .line 553
    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    const-string v0, ".tpns.msg.id.service"

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 557
    if-eqz v0, :cond_1

    .line 558
    check-cast v0, Ljava/util/ArrayList;

    .line 562
    :goto_0
    if-nez v0, :cond_0

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 565
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private declared-synchronized b()V
    .locals 2

    .prologue
    .line 1234
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/channel/b;->b(Z)I

    move-result v0

    .line 1235
    if-lez v0, :cond_0

    .line 1236
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/c/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    :cond_0
    monitor-exit p0

    return-void

    .line 1234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Landroid/content/Context;Lcom/tencent/android/tpush/data/MessageId;)V
    .locals 6

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Lcom/tencent/android/tpush/data/MessageId;)Ljava/util/ArrayList;

    move-result-object v0

    .line 288
    sget-boolean v1, Lcom/tencent/android/tpush/service/c/a;->f:Z

    if-eqz v1, :cond_1

    .line 289
    const-string v1, "SrvMessageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestServiceAck ack is uploading , this time will give up!  msgId =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :goto_1
    monitor-exit p0

    return-void

    .line 289
    :cond_0
    :try_start_1
    iget-wide v4, p2, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 298
    :cond_2
    const-string v0, "SrvMessageManager"

    const-string v1, "requestServiceAck with null list , give up this time"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 301
    :cond_3
    const/4 v1, 0x1

    :try_start_2
    sput-boolean v1, Lcom/tencent/android/tpush/service/c/a;->f:Z

    .line 302
    invoke-static {}, Lcom/tencent/android/tpush/service/s;->a()Lcom/tencent/android/tpush/service/s;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/service/c/c;

    invoke-direct {v2, p0, p2, p1}, Lcom/tencent/android/tpush/service/c/c;-><init>(Lcom/tencent/android/tpush/service/c/a;Lcom/tencent/android/tpush/data/MessageId;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/android/tpush/service/s;->a(Ljava/util/ArrayList;Lcom/tencent/android/tpush/service/channel/t;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 56
    sput-boolean p0, Lcom/tencent/android/tpush/service/c/a;->f:Z

    return p0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 768
    const/4 v1, 0x0

    .line 769
    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 771
    const-string v0, ".tpns.msg.id.clicked"

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 773
    if-eqz v0, :cond_1

    .line 774
    check-cast v0, Ljava/util/ArrayList;

    .line 777
    :goto_0
    if-nez v0, :cond_0

    .line 778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 780
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1244
    iget-object v0, p0, Lcom/tencent/android/tpush/service/c/a;->h:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 1245
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/c/f;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/service/c/f;-><init>(Lcom/tencent/android/tpush/service/c/a;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.android.tpush.service.channel.cacheMsgBeatIntent"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.service.channel.cacheMsgBeatIntent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1258
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v6, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/c/a;->h:Landroid/app/PendingIntent;

    .line 1262
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/x;->a()Lcom/tencent/android/tpush/service/x;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/tencent/android/tpush/service/c/a;->a:J

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/tencent/android/tpush/service/c/a;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v2, v3, v1}, Lcom/tencent/android/tpush/service/x;->a(IJLandroid/app/PendingIntent;)V

    .line 1265
    return-void
.end method

.method static synthetic c(Z)Z
    .locals 0

    .prologue
    .line 56
    sput-boolean p0, Lcom/tencent/android/tpush/service/c/a;->g:Z

    return p0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 873
    sget-object v2, Lcom/tencent/android/tpush/service/c/a;->c:[B

    monitor-enter v2

    .line 875
    const/4 v0, 0x0

    .line 876
    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {p2}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 878
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 880
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 881
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 882
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 883
    invoke-virtual {v0}, Lcom/tencent/android/tpush/data/MessageId;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 884
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 890
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    .line 889
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 615
    const/4 v0, 0x0

    .line 616
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/c/a;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 617
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 618
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 619
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/PushClickEntity;

    .line 620
    new-instance v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;

    invoke-direct {v3}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;-><init>()V

    .line 621
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->accessId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->accessId:J

    .line 622
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->msgId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->msgId:J

    .line 623
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->broadcastId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->broadcastId:J

    .line 624
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->timestamp:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->timestamp:J

    .line 625
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->type:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->type:J

    .line 626
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->clickTime:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->clickTime:J

    .line 627
    iget v0, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->action:I

    int-to-long v4, v0

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->action:J

    .line 634
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x1e

    if-le v0, v3, :cond_0

    .line 640
    :goto_0
    return-object v1

    :cond_1
    move-object v0, v1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/tencent/android/tpush/data/MessageId;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 471
    sget-object v3, Lcom/tencent/android/tpush/service/c/a;->c:[B

    monitor-enter v3

    .line 472
    const/4 v0, 0x0

    .line 473
    if-eqz p1, :cond_6

    .line 475
    const/4 v1, 0x0

    .line 476
    :try_start_0
    invoke-static {p1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 477
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 478
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 479
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 480
    invoke-direct {p0, p1, v0}, Lcom/tencent/android/tpush/service/c/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 482
    if-eqz p2, :cond_1

    iget-object v6, p2, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    :cond_1
    const/4 v1, 0x1

    .line 485
    :cond_2
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 486
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-object v0, v2

    .line 490
    :cond_4
    if-nez v1, :cond_5

    .line 492
    :try_start_1
    iget-object v1, p2, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/tencent/android/tpush/service/c/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 494
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 496
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 497
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 498
    invoke-virtual {v0, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 499
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    :cond_5
    :goto_1
    :try_start_2
    const-string v1, "all"

    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 510
    :cond_6
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    .line 501
    :cond_7
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 504
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 903
    const/4 v1, 0x0

    .line 904
    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 906
    const-string v0, ".tpns.msg.id"

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 908
    if-eqz v0, :cond_1

    .line 909
    check-cast v0, Ljava/util/ArrayList;

    .line 912
    :goto_0
    if-nez v0, :cond_0

    .line 913
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 915
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8

    .prologue
    .line 430
    const/4 v0, 0x0

    .line 431
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 433
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 434
    new-instance v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;

    invoke-direct {v3}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;-><init>()V

    .line 435
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->accessId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->accessId:J

    .line 436
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->msgId:J

    .line 437
    iget-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->apn:B

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->apn:B

    .line 438
    iget-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->isp:B

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->isp:B

    .line 439
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->host:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->locip:J

    .line 440
    iget v4, v0, Lcom/tencent/android/tpush/data/MessageId;->port:I

    iput v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->locport:I

    .line 441
    iget-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->pact:B

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->pack:B

    .line 442
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->pushTime:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->timeUs:J

    .line 443
    iget-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->accessId:J

    invoke-static {p1, v4, v5}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getQua(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->qua:Ljava/lang/String;

    .line 444
    iget-object v4, v0, Lcom/tencent/android/tpush/data/MessageId;->serviceHost:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->serviceHost:Ljava/lang/String;

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->confirmMs:J

    .line 446
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->busiMsgId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->broadcastId:J

    .line 447
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->timestamp:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->timestamp:J

    .line 448
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->msgType:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->type:J

    .line 449
    const/4 v4, 0x1

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->ackType:B

    .line 450
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->receiveTime:J

    .line 451
    sget-boolean v4, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v4, :cond_1

    .line 452
    const-string v4, "SrvMessageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ack to server : @msgId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->msgId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @accId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->accessId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @timeUs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->timeUs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @confirmMs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->confirmMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @recTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @msgType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->msgType:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " @broadcastId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->broadcastId:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x1e

    if-le v0, v3, :cond_0

    .line 466
    :goto_0
    return-object v1

    :cond_2
    move-object v0, v1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 210
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 212
    :try_start_0
    const-string v0, "msgId"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 213
    const-string v0, "packName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    const-string v0, "MessageId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 215
    const/4 v1, 0x4

    invoke-static {v1, v4, v5}, Lcom/tencent/android/tpush/a/a;->a(IJ)V

    .line 216
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0, p1, v3, v0}, Lcom/tencent/android/tpush/service/c/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/MessageId;)V

    .line 218
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/lang/String;JS)V

    .line 219
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 221
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;JLcom/tencent/android/tpush/service/channel/a;)V
    .locals 7

    .prologue
    .line 259
    iget-wide v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 260
    const-string v0, "XGService"

    const-string v1, "@@ msgServiceAck: Not add LocalMsg"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 264
    new-instance v2, Lcom/tencent/android/tpush/data/MessageId;

    invoke-direct {v2}, Lcom/tencent/android/tpush/data/MessageId;-><init>()V

    .line 265
    iget-wide v4, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->msgId:J

    iput-wide v4, v2, Lcom/tencent/android/tpush/data/MessageId;->id:J

    .line 266
    iget-wide v4, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->accessId:J

    iput-wide v4, v2, Lcom/tencent/android/tpush/data/MessageId;->accessId:J

    .line 267
    invoke-virtual {p5}, Lcom/tencent/android/tpush/service/channel/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/service/e/h;->c(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/android/tpush/data/MessageId;->host:J

    .line 268
    invoke-virtual {p5}, Lcom/tencent/android/tpush/service/channel/a;->e()I

    move-result v3

    iput v3, v2, Lcom/tencent/android/tpush/data/MessageId;->port:I

    .line 269
    invoke-virtual {p5}, Lcom/tencent/android/tpush/service/channel/a;->b()Z

    move-result v3

    invoke-static {v3}, Lcom/tencent/android/tpush/service/s;->a(Z)B

    move-result v3

    iput-byte v3, v2, Lcom/tencent/android/tpush/data/MessageId;->pact:B

    .line 270
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/service/e/h;->g(Landroid/content/Context;)B

    move-result v3

    iput-byte v3, v2, Lcom/tencent/android/tpush/data/MessageId;->apn:B

    .line 271
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/service/e/h;->h(Landroid/content/Context;)B

    move-result v3

    iput-byte v3, v2, Lcom/tencent/android/tpush/data/MessageId;->isp:B

    .line 272
    iput-wide p3, v2, Lcom/tencent/android/tpush/data/MessageId;->pushTime:J

    .line 273
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/android/tpush/data/MessageId;->serviceHost:Ljava/lang/String;

    .line 274
    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    .line 275
    iget-object v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    .line 276
    iget-wide v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->busiMsgId:J

    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->busiMsgId:J

    .line 277
    iget-wide v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->timestamp:J

    .line 278
    iget-wide v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->type:J

    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->msgType:J

    .line 279
    iget-wide v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->multiPkg:J

    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->multiPkg:J

    .line 280
    iget-object v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->date:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/android/tpush/data/MessageId;->date:Ljava/lang/String;

    .line 281
    iget-object v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v2}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/MessageId;)V

    .line 282
    invoke-direct {p0, p1, v2}, Lcom/tencent/android/tpush/service/c/a;->b(Landroid/content/Context;Lcom/tencent/android/tpush/data/MessageId;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;JS)V
    .locals 9

    .prologue
    .line 946
    sget-object v2, Lcom/tencent/android/tpush/service/c/a;->c:[B

    monitor-enter v2

    .line 947
    const/4 v1, 0x0

    .line 948
    if-eqz p1, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    if-lez v0, :cond_1

    .line 950
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 952
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 953
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 954
    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    cmp-long v5, v6, p3

    if-nez v5, :cond_4

    .line 955
    iput-short p5, v0, Lcom/tencent/android/tpush/data/MessageId;->isAck:S

    .line 956
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 958
    goto :goto_0

    .line 959
    :cond_0
    if-eqz v1, :cond_2

    .line 960
    invoke-virtual {p0, p1, p2, v3}, Lcom/tencent/android/tpush/service/c/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 972
    :cond_1
    :goto_2
    monitor-exit v2

    .line 973
    return-void

    .line 962
    :cond_2
    const-string v0, "SrvMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMsgIdFlag Failed with no equal MessageId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " pkgName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const/16 v0, 0xb

    invoke-static {v0, p3, p4}, Lcom/tencent/android/tpush/a/a;->a(IJ)V

    goto :goto_2

    .line 972
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 968
    :cond_3
    const/16 v0, 0xc

    :try_start_1
    invoke-static {v0, p3, p4}, Lcom/tencent/android/tpush/a/a;->a(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/MessageId;)V
    .locals 10

    .prologue
    .line 517
    sget-object v2, Lcom/tencent/android/tpush/service/c/a;->c:[B

    monitor-enter v2

    .line 518
    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {p2}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 521
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/c/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 523
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 524
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 525
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 526
    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    iget-wide v8, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 528
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 531
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 532
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-virtual {p0, p1, p2, v3}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 535
    :cond_2
    monitor-exit v2

    .line 536
    return-void

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/PushClickEntity;)V
    .locals 10

    .prologue
    .line 786
    sget-object v2, Lcom/tencent/android/tpush/service/c/a;->c:[B

    monitor-enter v2

    .line 787
    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {p2}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 790
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/c/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 792
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 793
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 794
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/PushClickEntity;

    .line 795
    iget-wide v6, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->msgId:J

    iget-wide v8, p3, Lcom/tencent/android/tpush/data/PushClickEntity;->msgId:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 797
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 800
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 801
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    invoke-virtual {p0, p1, p2, v3}, Lcom/tencent/android/tpush/service/c/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 804
    :cond_2
    monitor-exit v2

    .line 805
    return-void

    .line 804
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 540
    sget-object v1, Lcom/tencent/android/tpush/service/c/a;->c:[B

    monitor-enter v1

    .line 541
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 543
    :try_start_0
    const-string v0, ".tpns.msg.id.service"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 546
    :cond_0
    monitor-exit v1

    .line 547
    return-void

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 12

    .prologue
    .line 381
    sget-object v5, Lcom/tencent/android/tpush/service/c/a;->c:[B

    monitor-enter v5

    .line 382
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_4

    .line 385
    :try_start_1
    const-string v0, "all"

    invoke-direct {p0, p1, v0}, Lcom/tencent/android/tpush/service/c/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 388
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 390
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 391
    iget-object v1, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 393
    if-nez v1, :cond_6

    .line 394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 395
    iget-object v2, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 397
    :goto_1
    const/4 v3, 0x1

    .line 398
    const/4 v1, 0x0

    move v4, v1

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_5

    .line 399
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;

    .line 400
    iget-wide v8, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    iget-wide v10, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->msgId:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_2

    .line 401
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 403
    const/4 v1, 0x0

    .line 407
    :goto_3
    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    :try_start_2
    const-string v1, "SrvMessageManager"

    const-string v2, "+++ clear msg id exception"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 424
    :cond_1
    :goto_4
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    return-void

    .line 398
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 412
    :cond_3
    :try_start_3
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 413
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 424
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 421
    :cond_4
    :try_start_5
    const-string v0, "SrvMessageManager"

    const-string v1, "deleteServiceMsgIdBatch with null context or null list"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    move-object v2, v1

    goto :goto_1
.end method

.method public a(Ljava/util/ArrayList;JLcom/tencent/android/tpush/service/channel/a;)V
    .locals 0

    .prologue
    .line 1183
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/android/tpush/service/c/a;->b(Ljava/util/ArrayList;JLcom/tencent/android/tpush/service/channel/a;)V

    .line 1184
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 728
    const/4 v0, 0x0

    .line 729
    if-eqz p1, :cond_2

    .line 731
    invoke-static {p1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 732
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 733
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 734
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 735
    invoke-direct {p0, p1, v0}, Lcom/tencent/android/tpush/service/c/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 737
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 738
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 743
    :cond_2
    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8

    .prologue
    .line 827
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 828
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 829
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 830
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 831
    new-instance v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;

    invoke-direct {v3}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;-><init>()V

    .line 832
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->accessId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->accessId:J

    .line 833
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->msgId:J

    .line 834
    iget-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->apn:B

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->apn:B

    .line 835
    iget-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->isp:B

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->isp:B

    .line 836
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->host:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->locip:J

    .line 837
    iget v4, v0, Lcom/tencent/android/tpush/data/MessageId;->port:I

    iput v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->locport:I

    .line 838
    iget-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->pact:B

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->pack:B

    .line 839
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->pushTime:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->timeUs:J

    .line 840
    iget-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->accessId:J

    invoke-static {p1, v4, v5}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getQua(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->qua:Ljava/lang/String;

    .line 841
    iget-object v4, v0, Lcom/tencent/android/tpush/data/MessageId;->serviceHost:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->serviceHost:Ljava/lang/String;

    .line 842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->confirmMs:J

    .line 843
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->busiMsgId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->broadcastId:J

    .line 844
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->timestamp:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->timestamp:J

    .line 845
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->msgType:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->type:J

    .line 846
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->receiveTime:J

    .line 855
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x1e

    if-le v0, v3, :cond_0

    .line 861
    :goto_0
    return-object v1

    :cond_1
    move-object v0, v1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public declared-synchronized b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    .prologue
    .line 230
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 232
    :try_start_0
    const-string v2, "packName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 234
    const-string v2, "msgId"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 235
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gtz v2, :cond_1

    .line 236
    const-string v2, "XGService"

    const-string v3, "@@ msgClick: Not add LocalMsg"

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 239
    :cond_1
    :try_start_1
    const-string v2, "accId"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 240
    const-string v2, "busiMsgId"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 242
    const-string/jumbo v2, "timestamps"

    const-wide/16 v10, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 244
    const-string v2, "clickTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 246
    const-string v2, "action"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 248
    new-instance v3, Lcom/tencent/android/tpush/data/PushClickEntity;

    const-wide/16 v13, 0x1

    invoke-direct/range {v3 .. v17}, Lcom/tencent/android/tpush/data/PushClickEntity;-><init>(JJJJLjava/lang/String;JJI)V

    .line 252
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v3}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/PushClickEntity;)V

    .line 253
    invoke-virtual/range {p0 .. p2}, Lcom/tencent/android/tpush/service/c/a;->c(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/MessageId;)V
    .locals 8

    .prologue
    .line 1038
    sget-object v3, Lcom/tencent/android/tpush/service/c/a;->c:[B

    monitor-enter v3

    .line 1039
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 1042
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1044
    if-nez v1, :cond_1

    .line 1045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    :goto_0
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/android/tpush/service/c/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1058
    :cond_0
    monitor-exit v3

    .line 1059
    return-void

    .line 1047
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 1048
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 1049
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    iget-wide v6, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 1050
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v0, v1

    .line 1051
    goto :goto_0

    .line 1047
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1058
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 809
    sget-object v1, Lcom/tencent/android/tpush/service/c/a;->c:[B

    monitor-enter v1

    .line 810
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 812
    :try_start_0
    const-string v0, ".tpns.msg.id.clicked"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 815
    :cond_0
    monitor-exit v1

    .line 816
    return-void

    .line 815
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 12

    .prologue
    .line 571
    sget-object v5, Lcom/tencent/android/tpush/service/c/a;->c:[B

    monitor-enter v5

    .line 572
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 575
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/c/a;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 576
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 577
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 579
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/PushClickEntity;

    .line 580
    iget-object v1, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 582
    if-nez v1, :cond_5

    .line 583
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 584
    iget-object v2, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 586
    :goto_1
    const/4 v3, 0x1

    .line 587
    const/4 v1, 0x0

    move v4, v1

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_4

    .line 588
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;

    .line 589
    iget-wide v8, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->msgId:J

    iget-wide v10, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->msgId:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_2

    .line 590
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 591
    const/4 v1, 0x0

    .line 595
    :goto_3
    if-eqz v1, :cond_0

    .line 596
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    iget-object v0, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    :try_start_2
    const-string v1, "SrvMessageManager"

    const-string v2, "+++ clear msg id exception"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 609
    :cond_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 610
    return-void

    .line 587
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 600
    :cond_3
    :try_start_3
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 601
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/android/tpush/service/c/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 609
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move-object v2, v1

    goto :goto_1
.end method

.method public b(Ljava/util/ArrayList;JLcom/tencent/android/tpush/service/channel/a;)V
    .locals 8

    .prologue
    .line 1195
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1197
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/tencent/android/tpush/a/a;->b(ILjava/util/List;)V

    .line 1198
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;

    .line 1199
    const-string v1, "SrvMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "distributeFromServer : accid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->accessId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",busiId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->busiMsgId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",pkg="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",msgId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->msgId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->type:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",ts="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",multi="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->multiPkg:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",date="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->date:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",serverTime="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->serverTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",ttl="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    move-object v1, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;JLcom/tencent/android/tpush/service/channel/a;)V

    .line 1213
    iget-object v1, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->multiPkg:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 1214
    const-string v1, "SrvMessageManager"

    const-string v2, ">> messageDistribute, msg.appPkgName is null!"

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1219
    :cond_0
    invoke-direct {p0, v3, p2, p3, p4}, Lcom/tencent/android/tpush/service/c/a;->a(Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;JLcom/tencent/android/tpush/service/channel/a;)V

    goto/16 :goto_0

    .line 1223
    :cond_1
    invoke-static {p1}, Lcom/tencent/android/tpush/service/d/a;->a(Ljava/util/ArrayList;)V

    .line 1224
    return-void
.end method

.method public c(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 747
    const/4 v0, 0x0

    .line 748
    if-eqz p1, :cond_2

    .line 750
    invoke-static {p1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 751
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 752
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 753
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 754
    invoke-direct {p0, p1, v0}, Lcom/tencent/android/tpush/service/c/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 756
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 757
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 762
    :cond_2
    return-object v0
.end method

.method public c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 652
    sget-boolean v0, Lcom/tencent/android/tpush/service/c/a;->g:Z

    if-eqz v0, :cond_0

    .line 719
    :goto_0
    return-void

    .line 655
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 656
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 657
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/android/tpush/service/c/a;->g:Z

    .line 662
    invoke-static {}, Lcom/tencent/android/tpush/service/s;->a()Lcom/tencent/android/tpush/service/s;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/service/c/d;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/tencent/android/tpush/service/c/d;-><init>(Lcom/tencent/android/tpush/service/c/a;Ljava/util/ArrayList;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/android/tpush/service/s;->b(Ljava/util/ArrayList;Lcom/tencent/android/tpush/service/channel/t;)V

    goto :goto_0

    .line 659
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/android/tpush/service/c/a;->g:Z

    goto :goto_0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 928
    sget-object v1, Lcom/tencent/android/tpush/service/c/a;->c:[B

    monitor-enter v1

    .line 929
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 931
    :try_start_0
    const-string v0, ".tpns.msg.id"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 933
    :cond_0
    monitor-exit v1

    .line 934
    return-void

    .line 933
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Landroid/content/Context;Ljava/util/List;)V
    .locals 12

    .prologue
    .line 986
    sget-object v5, Lcom/tencent/android/tpush/service/c/a;->c:[B

    monitor-enter v5

    .line 987
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 991
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/c/a;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 992
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 993
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 995
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 996
    iget-object v1, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 998
    if-nez v1, :cond_5

    .line 999
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    iget-object v2, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 1002
    :goto_1
    const/4 v3, 0x1

    .line 1003
    const/4 v1, 0x0

    move v4, v1

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_4

    .line 1004
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;

    .line 1005
    iget-wide v8, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    iget-wide v10, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->msgId:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_2

    .line 1008
    const/4 v1, 0x0

    .line 1012
    :goto_3
    if-eqz v1, :cond_0

    .line 1013
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    iget-object v0, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    :try_start_2
    const-string v1, "SrvMessageManager"

    const-string v2, "deleteMsgIdBatch"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1027
    :cond_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1028
    return-void

    .line 1003
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 1017
    :cond_3
    :try_start_3
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1018
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/android/tpush/service/c/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1027
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move-object v2, v1

    goto :goto_1
.end method
