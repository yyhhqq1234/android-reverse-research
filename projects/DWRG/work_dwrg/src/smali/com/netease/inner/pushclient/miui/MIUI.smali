.class public Lcom/netease/inner/pushclient/miui/MIUI;
.super Ljava/lang/Object;
.source "MIUI.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static s_inst:Lcom/netease/inner/pushclient/miui/MIUI;


# instance fields
.field m_appid:Ljava/lang/String;

.field m_appkey:Ljava/lang/String;

.field private m_ctx:Landroid/content/Context;

.field m_regid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NGPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netease/inner/pushclient/miui/MIUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/inner/pushclient/miui/MIUI;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/netease/inner/pushclient/miui/MIUI;

    invoke-direct {v0}, Lcom/netease/inner/pushclient/miui/MIUI;-><init>()V

    sput-object v0, Lcom/netease/inner/pushclient/miui/MIUI;->s_inst:Lcom/netease/inner/pushclient/miui/MIUI;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/inner/pushclient/miui/MIUI;->m_appid:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/inner/pushclient/miui/MIUI;->m_appkey:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static getInst()Lcom/netease/inner/pushclient/miui/MIUI;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/netease/inner/pushclient/miui/MIUI;->s_inst:Lcom/netease/inner/pushclient/miui/MIUI;

    return-object v0
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/netease/inner/pushclient/miui/MIUI;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 32
    sget-object v3, Lcom/netease/inner/pushclient/miui/MIUI;->TAG:Ljava/lang/String;

    const-string v4, "init"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iput-object p1, p0, Lcom/netease/inner/pushclient/miui/MIUI;->m_ctx:Landroid/content/Context;

    .line 34
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v3

    const-string v4, "miui"

    invoke-virtual {v3, p1, v4}, Lcom/netease/inner/pushclient/PushManager;->getAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/inner/pushclient/miui/MIUI;->m_appid:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v3

    const-string v4, "miui"

    invoke-virtual {v3, p1, v4}, Lcom/netease/inner/pushclient/PushManager;->getAppKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/inner/pushclient/miui/MIUI;->m_appkey:Ljava/lang/String;

    .line 36
    iget-object v3, p0, Lcom/netease/inner/pushclient/miui/MIUI;->m_appid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    sget-object v3, Lcom/netease/inner/pushclient/miui/MIUI;->TAG:Ljava/lang/String;

    const-string v4, "AppID is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v3, p0, Lcom/netease/inner/pushclient/miui/MIUI;->m_appkey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    sget-object v3, Lcom/netease/inner/pushclient/miui/MIUI;->TAG:Ljava/lang/String;

    const-string v4, "AppKey is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_1
    :try_start_0
    const-string v3, "com.netease.inner.pushclient.miui.MiuiPushClient"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 46
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "registerPush"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 47
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netease/inner/pushclient/miui/MIUI;->m_ctx:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/netease/inner/pushclient/miui/MIUI;->m_appid:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/netease/inner/pushclient/miui/MIUI;->m_appkey:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    sget-object v3, Lcom/netease/inner/pushclient/miui/MIUI;->TAG:Ljava/lang/String;

    const-string v4, "MiPush_SDK_Client jars not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
