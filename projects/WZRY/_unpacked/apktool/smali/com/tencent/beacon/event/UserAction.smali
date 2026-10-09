.class public Lcom/tencent/beacon/event/UserAction;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/beacon/event/UserAction$a;,
        Lcom/tencent/beacon/event/UserAction$BeaconJsBridge;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Landroid/content/Context;

.field private static d:Z

.field private static e:J

.field private static f:Lcom/tencent/beacon/upload/InitHandleListener;

.field private static g:Lcom/tencent/beacon/upload/UploadHandleListener;

.field private static h:Ljava/lang/Boolean;

.field private static i:Ljava/lang/Boolean;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/Boolean;

.field private static u:J

.field private static v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/beacon/event/UserAction$a;",
            ">;"
        }
    .end annotation
.end field

.field private static x:Ldalvik/system/DexClassLoader;

.field private static y:Lcom/tencent/beacon/cover/UserActionProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Lcom/tencent/beacon/event/UserAction;->a:Z

    .line 34
    sput-boolean v0, Lcom/tencent/beacon/event/UserAction;->b:Z

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/beacon/event/UserAction;->d:Z

    .line 41
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/beacon/event/UserAction;->e:J

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->w:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2387
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_0

    .line 2388
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/cover/UserActionProxy;->setJsClientId(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 2390
    :cond_0
    sput-object p0, Lcom/tencent/beacon/event/UserAction;->s:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_0

    move v0, v1

    .line 102
    :goto_0
    return v0

    .line 95
    :cond_0
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->x:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 97
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->x:Ldalvik/system/DexClassLoader;

    const-string v3, "com.tencent.beacon.core.UserActionProxyImpl"

    invoke-virtual {v0, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/cover/UserActionProxy;

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_1
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 102
    goto :goto_0
.end method

.method public static configBeaconJs(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 395
    if-eqz p0, :cond_0

    .line 397
    new-instance v0, Lcom/tencent/beacon/event/UserAction$BeaconJsBridge;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/beacon/event/UserAction$BeaconJsBridge;-><init>(Lcom/tencent/beacon/event/UserAction$1;)V

    const-string v1, "beacon"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 400
    :cond_0
    return-void
.end method

.method public static doUploadRecords()V
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    invoke-virtual {v0}, Lcom/tencent/beacon/cover/UserActionProxy;->doUploadRecords()V

    .line 333
    :cond_0
    return-void
.end method

.method public static flushObjectsToDB(Z)V
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_0

    .line 337
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/cover/UserActionProxy;->flushObjectsToDB(Z)V

    .line 339
    :cond_0
    return-void
.end method

.method public static getCloudParas(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_0

    .line 343
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/cover/UserActionProxy;->getCloudParas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getQIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    invoke-virtual {v0}, Lcom/tencent/beacon/cover/UserActionProxy;->getQIMEI()Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 364
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_0

    .line 365
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    invoke-virtual {v0}, Lcom/tencent/beacon/cover/UserActionProxy;->getSDKVersion()Ljava/lang/String;

    .line 367
    :cond_0
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static initUserAction(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/beacon/event/UserAction;->initUserAction(Landroid/content/Context;Z)V

    .line 174
    return-void
.end method

.method public static initUserAction(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 177
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/tencent/beacon/event/UserAction;->initUserAction(Landroid/content/Context;ZJ)V

    .line 178
    return-void
.end method

.method public static initUserAction(Landroid/content/Context;ZJ)V
    .locals 2

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tencent/beacon/event/UserAction;->initUserAction(Landroid/content/Context;ZJLcom/tencent/beacon/upload/InitHandleListener;)V

    .line 183
    return-void
.end method

.method public static initUserAction(Landroid/content/Context;ZJLcom/tencent/beacon/upload/InitHandleListener;)V
    .locals 6

    .prologue
    .line 186
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/beacon/event/UserAction;->initUserAction(Landroid/content/Context;ZJLcom/tencent/beacon/upload/InitHandleListener;Lcom/tencent/beacon/upload/UploadHandleListener;)V

    .line 187
    return-void
.end method

.method public static initUserAction(Landroid/content/Context;ZJLcom/tencent/beacon/upload/InitHandleListener;Lcom/tencent/beacon/upload/UploadHandleListener;)V
    .locals 10

    .prologue
    .line 190
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_e

    .line 191
    sget-boolean v0, Lcom/tencent/beacon/event/UserAction;->a:Z

    if-nez v0, :cond_9

    .line 1110
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_9

    .line 1111
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/beacon/event/UserAction;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1112
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/tencent/beacon/event/UserAction;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/beacon/event/UserAction;->setLogAble(ZZ)V

    .line 1113
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->h:Ljava/lang/Boolean;

    .line 1114
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->i:Ljava/lang/Boolean;

    .line 1116
    :cond_0
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->p:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1117
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->p:Ljava/util/Map;

    invoke-static {v0}, Lcom/tencent/beacon/event/UserAction;->setAdditionalInfo(Ljava/util/Map;)V

    .line 1118
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->p:Ljava/util/Map;

    .line 1120
    :cond_1
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1121
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/beacon/event/UserAction;->setAppkey(Ljava/lang/String;)V

    .line 1122
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->j:Ljava/lang/String;

    .line 1124
    :cond_2
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->k:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1125
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/beacon/event/UserAction;->setAppVersion(Ljava/lang/String;)V

    .line 1126
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->k:Ljava/lang/String;

    .line 1128
    :cond_3
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->m:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1129
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/beacon/event/UserAction;->setChannelID(Ljava/lang/String;)V

    .line 1130
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->m:Ljava/lang/String;

    .line 1132
    :cond_4
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->l:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1133
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/beacon/event/UserAction;->setSDKVersion(Ljava/lang/String;)V

    .line 1134
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->l:Ljava/lang/String;

    .line 1136
    :cond_5
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->n:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1137
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/beacon/event/UserAction;->setQQ(Ljava/lang/String;)V

    .line 1138
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->n:Ljava/lang/String;

    .line 1140
    :cond_6
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->o:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1141
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/beacon/event/UserAction;->setUserID(Ljava/lang/String;)V

    .line 1142
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->o:Ljava/lang/String;

    .line 1144
    :cond_7
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->s:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1145
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->s:Ljava/lang/String;

    .line 1387
    sget-object v1, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v1, :cond_b

    .line 1388
    sget-object v1, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    invoke-virtual {v1, v0}, Lcom/tencent/beacon/cover/UserActionProxy;->setJsClientId(Ljava/lang/String;)V

    .line 1146
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->s:Ljava/lang/String;

    .line 1148
    :cond_8
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->q:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/tencent/beacon/event/UserAction;->r:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1149
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->q:Ljava/lang/String;

    sget-object v1, Lcom/tencent/beacon/event/UserAction;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/beacon/event/UserAction;->setReportDomain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->q:Ljava/lang/String;

    .line 1151
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->r:Ljava/lang/String;

    .line 192
    :cond_9
    sget-object v1, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/beacon/cover/UserActionProxy;->initUserAction(Landroid/content/Context;ZJLcom/tencent/beacon/upload/InitHandleListener;Lcom/tencent/beacon/upload/UploadHandleListener;)V

    .line 193
    sget-boolean v0, Lcom/tencent/beacon/event/UserAction;->a:Z

    if-nez v0, :cond_d

    .line 2160
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->t:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 2161
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-wide v2, Lcom/tencent/beacon/event/UserAction;->u:J

    sget-object v1, Lcom/tencent/beacon/event/UserAction;->v:Ljava/util/Map;

    invoke-static {v0, v2, v3, v1}, Lcom/tencent/beacon/event/UserAction;->loginEvent(ZJLjava/util/Map;)Z

    .line 2162
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->t:Ljava/lang/Boolean;

    .line 2163
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->v:Ljava/util/Map;

    .line 2165
    :cond_a
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/tencent/beacon/event/UserAction$a;

    .line 2166
    iget-object v0, v8, Lcom/tencent/beacon/event/UserAction$a;->a:Ljava/lang/String;

    iget-boolean v1, v8, Lcom/tencent/beacon/event/UserAction$a;->b:Z

    iget-wide v2, v8, Lcom/tencent/beacon/event/UserAction$a;->c:J

    const-wide/16 v4, 0x0

    iget-object v6, v8, Lcom/tencent/beacon/event/UserAction$a;->d:Ljava/util/Map;

    iget-boolean v7, v8, Lcom/tencent/beacon/event/UserAction$a;->e:Z

    iget-boolean v8, v8, Lcom/tencent/beacon/event/UserAction$a;->f:Z

    invoke-static/range {v0 .. v8}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;ZZ)Z

    goto :goto_1

    .line 1390
    :cond_b
    sput-object v0, Lcom/tencent/beacon/event/UserAction;->s:Ljava/lang/String;

    goto :goto_0

    .line 2169
    :cond_c
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 194
    :cond_d
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/beacon/event/UserAction;->a:Z

    .line 206
    :goto_2
    return-void

    .line 196
    :cond_e
    sget-boolean v0, Lcom/tencent/beacon/event/UserAction;->b:Z

    if-nez v0, :cond_f

    .line 197
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p0}, Lcom/tencent/beacon/cover/g;->a(Landroid/content/Context;)Lcom/tencent/beacon/cover/g;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 198
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/beacon/event/UserAction;->b:Z

    .line 200
    :cond_f
    sput-object p0, Lcom/tencent/beacon/event/UserAction;->c:Landroid/content/Context;

    .line 201
    sput-boolean p1, Lcom/tencent/beacon/event/UserAction;->d:Z

    .line 202
    sput-wide p2, Lcom/tencent/beacon/event/UserAction;->e:J

    .line 203
    sput-object p4, Lcom/tencent/beacon/event/UserAction;->f:Lcom/tencent/beacon/upload/InitHandleListener;

    .line 204
    sput-object p5, Lcom/tencent/beacon/event/UserAction;->g:Lcom/tencent/beacon/upload/UploadHandleListener;

    goto :goto_2
.end method

.method public static loginEvent(ZJLjava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 236
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/beacon/cover/UserActionProxy;->loginEvent(ZJLjava/util/Map;)Z

    move-result v0

    .line 243
    :goto_0
    return v0

    .line 239
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->t:Ljava/lang/Boolean;

    .line 240
    sput-wide p1, Lcom/tencent/beacon/event/UserAction;->u:J

    .line 241
    sput-object p3, Lcom/tencent/beacon/event/UserAction;->v:Ljava/util/Map;

    .line 243
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onCompLoaded(Ldalvik/system/DexClassLoader;)V
    .locals 6

    .prologue
    .line 78
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->x:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_0

    .line 79
    sput-object p0, Lcom/tencent/beacon/event/UserAction;->x:Ldalvik/system/DexClassLoader;

    .line 80
    invoke-static {}, Lcom/tencent/beacon/event/UserAction;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/beacon/event/UserAction;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->c:Landroid/content/Context;

    sget-boolean v1, Lcom/tencent/beacon/event/UserAction;->d:Z

    sget-wide v2, Lcom/tencent/beacon/event/UserAction;->e:J

    sget-object v4, Lcom/tencent/beacon/event/UserAction;->f:Lcom/tencent/beacon/upload/InitHandleListener;

    sget-object v5, Lcom/tencent/beacon/event/UserAction;->g:Lcom/tencent/beacon/upload/UploadHandleListener;

    invoke-static/range {v0 .. v5}, Lcom/tencent/beacon/event/UserAction;->initUserAction(Landroid/content/Context;ZJLcom/tencent/beacon/upload/InitHandleListener;Lcom/tencent/beacon/upload/UploadHandleListener;)V

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->c:Landroid/content/Context;

    .line 87
    :cond_0
    return-void
.end method

.method public static onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 211
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;ZZ)Z

    move-result v0

    return v0
.end method

.method public static onUserAction(Ljava/lang/String;ZJJLjava/util/Map;ZZ)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 217
    sget-object v2, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v2, :cond_0

    .line 218
    sget-object v3, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    move-object v4, p0

    move v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-virtual/range {v3 .. v12}, Lcom/tencent/beacon/cover/UserActionProxy;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;ZZ)Z

    move-result v2

    .line 231
    :goto_0
    return v2

    .line 221
    :cond_0
    new-instance v2, Lcom/tencent/beacon/event/UserAction$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/tencent/beacon/event/UserAction$a;-><init>(B)V

    .line 222
    iput-object p0, v2, Lcom/tencent/beacon/event/UserAction$a;->a:Ljava/lang/String;

    .line 223
    iput-boolean p1, v2, Lcom/tencent/beacon/event/UserAction$a;->b:Z

    .line 224
    move-wide/from16 v0, p2

    iput-wide v0, v2, Lcom/tencent/beacon/event/UserAction$a;->c:J

    .line 225
    move-object/from16 v0, p6

    iput-object v0, v2, Lcom/tencent/beacon/event/UserAction$a;->d:Ljava/util/Map;

    .line 226
    move/from16 v0, p7

    iput-boolean v0, v2, Lcom/tencent/beacon/event/UserAction$a;->e:Z

    .line 227
    move/from16 v0, p8

    iput-boolean v0, v2, Lcom/tencent/beacon/event/UserAction$a;->f:Z

    .line 228
    sget-object v3, Lcom/tencent/beacon/event/UserAction;->w:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_1

    .line 229
    sget-object v3, Lcom/tencent/beacon/event/UserAction;->w:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setAPPVersion(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 359
    invoke-static {p0}, Lcom/tencent/beacon/event/UserAction;->setAppVersion(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public static setAdditionalInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_0

    .line 323
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/cover/UserActionProxy;->setAdditionalInfo(Ljava/util/Map;)V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    sput-object p0, Lcom/tencent/beacon/event/UserAction;->p:Ljava/util/Map;

    goto :goto_0
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 280
    sput-object p0, Lcom/tencent/beacon/cover/g;->a:Ljava/lang/String;

    .line 281
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_0

    .line 282
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/cover/UserActionProxy;->setAppKey(Ljava/lang/String;)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    sput-object p0, Lcom/tencent/beacon/event/UserAction;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 289
    sput-object p0, Lcom/tencent/beacon/cover/g;->b:Ljava/lang/String;

    .line 290
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/cover/UserActionProxy;->setAppVersion(Ljava/lang/String;)V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    sput-object p0, Lcom/tencent/beacon/event/UserAction;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setAppkey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 382
    invoke-static {p0}, Lcom/tencent/beacon/event/UserAction;->setAppKey(Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public static setChannelID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/cover/UserActionProxy;->setChannelID(Ljava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    sput-object p0, Lcom/tencent/beacon/event/UserAction;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setLogAble(ZZ)V
    .locals 1

    .prologue
    .line 247
    sput-boolean p0, Lcom/tencent/beacon/cover/f;->a:Z

    .line 248
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/beacon/cover/UserActionProxy;->setLogAble(ZZ)V

    .line 254
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->h:Ljava/lang/Boolean;

    .line 252
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->i:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static setQQ(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/cover/UserActionProxy;->setQQ(Ljava/lang/String;)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    sput-object p0, Lcom/tencent/beacon/event/UserAction;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setReportDomain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_0

    .line 350
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/beacon/cover/UserActionProxy;->setReportDomain(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :goto_0
    return-void

    .line 352
    :cond_0
    sput-object p0, Lcom/tencent/beacon/event/UserAction;->q:Ljava/lang/String;

    .line 353
    sput-object p1, Lcom/tencent/beacon/event/UserAction;->r:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setSDKVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 271
    sput-object p0, Lcom/tencent/beacon/cover/g;->b:Ljava/lang/String;

    .line 272
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/cover/UserActionProxy;->setSDKVersion(Ljava/lang/String;)V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    sput-object p0, Lcom/tencent/beacon/event/UserAction;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setUploadMode(Z)V
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/cover/UserActionProxy;->setUploadMode(Z)V

    .line 268
    :cond_0
    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    if-eqz v0, :cond_0

    .line 307
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->y:Lcom/tencent/beacon/cover/UserActionProxy;

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/cover/UserActionProxy;->setUserID(Ljava/lang/String;)V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    sput-object p0, Lcom/tencent/beacon/event/UserAction;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public static testSpeedDomain(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public static testSpeedIp(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method
