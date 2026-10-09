.class public Lcom/netease/mobile/link/MobileLink;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lcom/netease/mobile/link/MobileLink;


# instance fields
.field public a:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/netease/mobile/link/MobileLink;II)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p0, 0x1

    if-eq p2, p0, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    sget-boolean p0, Lcom/netease/mobile/link/c5;->a:Z

    const-string p1, "1"

    const-string p2, "VERIFY_TYPE"

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez p0, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p0

    const-string p1, "2"

    invoke-interface {p0, p2, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static enableOnePass(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 1
    iput-object p0, v0, Lcom/netease/mobile/link/a5;->f:Ljava/lang/String;

    return-void
.end method

.method public static getInst()Lcom/netease/mobile/link/MobileLink;
    .locals 2

    sget-object v0, Lcom/netease/mobile/link/MobileLink;->b:Lcom/netease/mobile/link/MobileLink;

    if-nez v0, :cond_1

    const-class v0, Lcom/netease/mobile/link/MobileLink;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/mobile/link/MobileLink;->b:Lcom/netease/mobile/link/MobileLink;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mobile/link/MobileLink;

    invoke-direct {v1}, Lcom/netease/mobile/link/MobileLink;-><init>()V

    sput-object v1, Lcom/netease/mobile/link/MobileLink;->b:Lcom/netease/mobile/link/MobileLink;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/mobile/link/MobileLink;->b:Lcom/netease/mobile/link/MobileLink;

    return-object v0
.end method

.method public static getMobileLinkHost()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netease/mobile/link/w;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.10.0"

    return-object v0
.end method

.method public static setLoadingUIVisible(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Enter setLoadingUIVisible : %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLink"

    .line 1
    invoke-static {v1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-boolean p0, Lcom/netease/mobile/link/w;->b:Z

    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyVisibilityChanged visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProgressImpl"

    invoke-static {v2, v1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/netease/mobile/link/p4;->a:Lcom/netease/mobile/link/o4;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/netease/mobile/link/p4;->a(Z)V

    :cond_0
    return-void
.end method

.method public static setMCountHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mcount/MCountKeyData;

    const-string v1, "EEkEEXLymcNjM42yLY3Bn6AO15aGy4yq"

    const-string v2, "mobile_link"

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/netease/mcount/MCountKeyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/netease/mcount/MCountKeyData;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mcount/MCountKeyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setMobileLinkHost(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/mobile/link/w;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static setSkin(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter setSkin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLink"

    .line 1
    invoke-static {v1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-object p0, Lcom/netease/mobile/link/w;->c:Ljava/lang/String;

    return-void
.end method

.method public static updateSkin(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter updateSkin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLink"

    .line 1
    invoke-static {v1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-object p1, Lcom/netease/mobile/link/w;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/netease/mobile/link/j5;->a(Landroid/content/Context;)Lcom/netease/mobile/link/j5;

    move-result-object p1

    sget-object v0, Lcom/netease/mobile/link/w;->c:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mobile/link/j5;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkGuideInLogin(Lcom/netease/mobile/link/UserData;Lcom/netease/mobile/link/relatelogin/CheckGuideCallback;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkGuideInLogin... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLink"

    .line 1
    invoke-static {v1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->o:Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;

    invoke-interface {v0}, Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;->getUserConfig()Lcom/netease/mobile/link/relatelogin/UserConfig;

    move-result-object v0

    iget-boolean v2, v0, Lcom/netease/mobile/link/relatelogin/UserConfig;->mGuideRelatedMobile:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lcom/netease/mobile/link/relatelogin/UserConfig;->mRelatedLoginEnabled:Z

    xor-int/2addr v0, v3

    :goto_0
    if-nez v0, :cond_1

    const-string p1, "checkGuideInLogin preCheckGuide: false"

    .line 5
    invoke-static {v1, p1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {p2, v3}, Lcom/netease/mobile/link/relatelogin/CheckGuideCallback;->onResult(Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mobile/link/a5;->a(Lcom/netease/mobile/link/UserData;)V

    iget-object p1, p0, Lcom/netease/mobile/link/MobileLink;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    sput p1, Lcom/netease/mobile/link/w;->e:I

    iget-object p1, p0, Lcom/netease/mobile/link/MobileLink;->a:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mobile/link/MobileLink$c;

    invoke-direct {v0, p0, p2}, Lcom/netease/mobile/link/MobileLink$c;-><init>(Lcom/netease/mobile/link/MobileLink;Lcom/netease/mobile/link/relatelogin/CheckGuideCallback;)V

    const/16 p2, 0xb

    invoke-static {p1, p2, v0}, Lcom/netease/mobile/link/MobileLinkActivity;->open(Landroid/app/Activity;ILcom/netease/mobile/link/r3;)V

    return-void
.end method

.method public forceUpdateMobileLink(Lcom/netease/mobile/link/UserData;Lcom/netease/mobile/link/Callback;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/netease/mobile/link/MobileLink;->linkMobile(ILcom/netease/mobile/link/UserData;Lcom/netease/mobile/link/Callback;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mobile/link/MobileLink;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    invoke-virtual {p0, p5}, Lcom/netease/mobile/link/MobileLink;->setDebug(Z)V

    iput-object p1, p0, Lcom/netease/mobile/link/MobileLink;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    const-class v0, Lcom/netease/mobile/link/a5;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p5, Lcom/netease/mobile/link/a5;->a:Landroid/content/Context;

    new-instance v2, Lcom/netease/mobile/link/f;

    invoke-direct {v2, v1}, Lcom/netease/mobile/link/f;-><init>(Landroid/content/Context;)V

    iput-object v2, p5, Lcom/netease/mobile/link/a5;->b:Lcom/netease/mobile/link/f;

    iput-object p2, p5, Lcom/netease/mobile/link/a5;->c:Ljava/lang/String;

    iput-object p3, p5, Lcom/netease/mobile/link/a5;->e:Ljava/lang/String;

    iput-object p4, p5, Lcom/netease/mobile/link/a5;->d:Ljava/lang/String;

    new-instance v1, Lcom/netease/mobile/link/u;

    invoke-direct {v1}, Lcom/netease/mobile/link/u;-><init>()V

    const-string v2, "country_codes_hash_key"

    .line 2
    invoke-virtual {v1, v2}, Lcom/netease/mobile/link/o5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, p5, Lcom/netease/mobile/link/a5;->j:Ljava/lang/String;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    invoke-static {p1}, Lcom/netease/mobile/link/j5;->a(Landroid/content/Context;)Lcom/netease/mobile/link/j5;

    move-result-object p5

    sget-object v0, Lcom/netease/mobile/link/w;->c:Ljava/lang/String;

    invoke-virtual {p5, p1, v0}, Lcom/netease/mobile/link/j5;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string p5, "netease"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_1

    invoke-static {}, Lcom/netease/mobile/link/p5;->a()Lcom/netease/mobile/link/p5;

    move-result-object p5

    iget-object v2, p0, Lcom/netease/mobile/link/MobileLink;->a:Landroid/app/Activity;

    monitor-enter p5

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    const-string v2, "SoundBox --------init--------"

    const-string v3, "MobileLink"

    .line 7
    invoke-static {v3, v2}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "com.netease.mpay.widget.sound.SoundBox"

    .line 8
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p5, Lcom/netease/mobile/link/p5;->a:Ljava/lang/Object;

    const-string v3, "playClickSound"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p5, Lcom/netease/mobile/link/p5;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_0
    :try_start_3
    invoke-static {v2}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0

    .line 5
    :goto_1
    monitor-exit p5

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p5

    throw p1

    .line 9
    :cond_1
    :goto_2
    invoke-static {}, Lcom/netease/mobile/link/z5;->a()Lcom/netease/mobile/link/z5;

    move-result-object p5

    const-string v2, "EEkEEXLymcNjM42yLY3Bn6AO15aGy4yq"

    const-string v3, "mobile_link"

    .line 10
    iget-boolean v4, p5, Lcom/netease/mobile/link/z5;->c:Z

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    iput-boolean v1, p5, Lcom/netease/mobile/link/z5;->c:Z

    iput-object v2, p5, Lcom/netease/mobile/link/z5;->a:Ljava/lang/String;

    iput-object v3, p5, Lcom/netease/mobile/link/z5;->b:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/netease/mobile/link/z5;->b()Lcom/netease/mcount/MCountAgent;

    move-result-object v2

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v3

    .line 11
    iget-boolean v3, v3, Lcom/netease/mobile/link/a5;->m:Z

    .line 12
    invoke-virtual {v2, v3}, Lcom/netease/mcount/MCountAgent;->setDebugMode(Z)V

    invoke-virtual {p5}, Lcom/netease/mobile/link/z5;->b()Lcom/netease/mcount/MCountAgent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netease/mcount/MCountAgent;->setMapFileEncryptInDebug(Z)V

    invoke-virtual {p5}, Lcom/netease/mobile/link/z5;->b()Lcom/netease/mcount/MCountAgent;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/netease/mcount/MCountAgent;->setSubAppKey(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/netease/mobile/link/z5;->b()Lcom/netease/mcount/MCountAgent;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/netease/mcount/MCountAgent;->setAppChannel(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/netease/mobile/link/z5;->b()Lcom/netease/mcount/MCountAgent;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/netease/mcount/MCountAgent;->setLoginChannel(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/netease/mobile/link/z5;->b()Lcom/netease/mcount/MCountAgent;

    move-result-object p3

    const-string p4, "mcount_mobile_link.json"

    invoke-virtual {p3, p1, v0, p4}, Lcom/netease/mcount/MCountAgent;->init(Landroid/content/Context;ILjava/lang/String;)V

    .line 13
    :goto_3
    invoke-static {}, Lcom/netease/mobile/link/z5;->a()Lcom/netease/mobile/link/z5;

    move-result-object p1

    const-string p3, "1.10.0"

    .line 14
    iget-object p4, p1, Lcom/netease/mobile/link/z5;->d:Ljava/util/HashMap;

    invoke-virtual {p4}, Ljava/util/HashMap;->clear()V

    iget-object p4, p1, Lcom/netease/mobile/link/z5;->d:Ljava/util/HashMap;

    const-string p5, "app_ver"

    invoke-virtual {p4, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p1, Lcom/netease/mobile/link/z5;->d:Ljava/util/HashMap;

    const-string p4, "game_id"

    invoke-virtual {p3, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netease/mobile/link/z5;->b()Lcom/netease/mcount/MCountAgent;

    move-result-object p2

    iget-object p1, p1, Lcom/netease/mobile/link/z5;->d:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Lcom/netease/mcount/MCountAgent;->setBasicEventInfoMap(Ljava/util/Map;)V

    return-void

    :catchall_1
    move-exception p1

    .line 15
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public linkMobile(ILcom/netease/mobile/link/UserData;Lcom/netease/mobile/link/Callback;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "linkMobile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/netease/mobile/link/UserData;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/netease/mobile/link/UserData;->ticket:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/netease/mobile/link/UserData;->roleId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/netease/mobile/link/UserData;->hostId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/netease/mobile/link/UserData;->forceUpdateTicket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLink"

    .line 1
    invoke-static {v1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mobile/link/MobileLink;->a:Landroid/app/Activity;

    .line 3
    invoke-static {}, Lcom/netease/mobile/link/z5;->a()Lcom/netease/mobile/link/z5;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/netease/mobile/link/z5;->b()Lcom/netease/mcount/MCountAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mcount/MCountAgent;->clearCurrentTransactionId()V

    invoke-virtual {v1}, Lcom/netease/mobile/link/z5;->b()Lcom/netease/mcount/MCountAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mcount/MCountAgent;->startTransaction(Landroid/content/Context;)V

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "type"

    const-string v3, "linkMobile"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/netease/mobile/link/z5;->a()Lcom/netease/mobile/link/z5;

    move-result-object v2

    .line 6
    iget-boolean v3, v2, Lcom/netease/mobile/link/z5;->c:Z

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Lcom/netease/mobile/link/z5;->b()Lcom/netease/mcount/MCountAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mcount/MCountAgent;->getCurrentTransactionId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_2

    .line 8
    invoke-virtual {v2}, Lcom/netease/mobile/link/z5;->b()Lcom/netease/mcount/MCountAgent;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netease/mcount/MCountAgent;->startTransaction(Landroid/content/Context;)V

    :cond_2
    invoke-virtual {v2}, Lcom/netease/mobile/link/z5;->b()Lcom/netease/mcount/MCountAgent;

    move-result-object v2

    const-string v3, "api_entry"

    invoke-virtual {v2, v0, v3, v1}, Lcom/netease/mcount/MCountAgent;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 9
    :goto_1
    new-instance v0, Lcom/netease/mobile/link/MobileLink$a;

    invoke-direct {v0, p0, p3}, Lcom/netease/mobile/link/MobileLink$a;-><init>(Lcom/netease/mobile/link/MobileLink;Lcom/netease/mobile/link/Callback;)V

    invoke-static {}, Lcom/netease/mobile/link/z5;->a()Lcom/netease/mobile/link/z5;

    move-result-object p3

    iget-object v1, p2, Lcom/netease/mobile/link/UserData;->uid:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/netease/mobile/link/z5;->a(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/netease/mobile/link/MobileLink;->a:Landroid/app/Activity;

    invoke-static {p3}, Lcom/netease/mobile/link/h6;->b(Landroid/app/Activity;)Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p2, Lcom/netease/mobile/link/UserData;->uid:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p2, Lcom/netease/mobile/link/UserData;->ticket:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    const/4 p3, 0x4

    if-ne p1, p3, :cond_3

    iget-object p3, p2, Lcom/netease/mobile/link/UserData;->forceUpdateTicket:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    iget-object p3, p0, Lcom/netease/mobile/link/MobileLink;->a:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p3

    sput p3, Lcom/netease/mobile/link/w;->e:I

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/netease/mobile/link/a5;->a(Lcom/netease/mobile/link/UserData;)V

    iget-object p2, p0, Lcom/netease/mobile/link/MobileLink;->a:Landroid/app/Activity;

    new-instance p3, Lcom/netease/mobile/link/MobileLink$b;

    invoke-direct {p3, v0}, Lcom/netease/mobile/link/MobileLink$b;-><init>(Lcom/netease/mobile/link/Callback;)V

    invoke-static {p2, p1, p3}, Lcom/netease/mobile/link/MobileLinkActivity;->open(Landroid/app/Activity;ILcom/netease/mobile/link/r3;)V

    return-void

    :cond_4
    :goto_2
    const/16 p1, 0x3e7

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/netease/mobile/link/MobileLink$a;->onFinish(II)V

    return-void
.end method

.method public setDebug(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/mobile/link/c3;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    invoke-direct {v0, v1}, Lcom/netease/mobile/link/c3;-><init>(I)V

    sput-object v0, Lcom/netease/mobile/link/d3;->a:Lcom/netease/mobile/link/c3;

    .line 2
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 3
    iput-boolean p1, v0, Lcom/netease/mobile/link/a5;->m:Z

    .line 4
    invoke-static {}, Lcom/netease/mobile/link/z5;->a()Lcom/netease/mobile/link/z5;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/netease/mobile/link/z5;->b()Lcom/netease/mcount/MCountAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mcount/MCountAgent;->setDebugMode(Z)V

    return-void
.end method

.method public setRelatedLoginHandler(Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;)V
    .locals 1

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 1
    iput-object p1, v0, Lcom/netease/mobile/link/a5;->o:Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;

    return-void
.end method

.method public showMobileLink(Lcom/netease/mobile/link/UserData;Lcom/netease/mobile/link/Callback;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/netease/mobile/link/MobileLink;->linkMobile(ILcom/netease/mobile/link/UserData;Lcom/netease/mobile/link/Callback;)V

    return-void
.end method

.method public showMobileLinkInUserCenter(Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mobile/link/Callback;Lcom/netease/mobile/link/relatelogin/OnRelatedLoginDisabledCallback;)V
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showMobileLinkInUserCenter... "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MobileLink"

    .line 1
    invoke-static {v0, p3}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p3

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/netease/mobile/link/a5;->p:Z

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p3

    iput-object p5, p3, Lcom/netease/mobile/link/a5;->q:Lcom/netease/mobile/link/relatelogin/OnRelatedLoginDisabledCallback;

    .line 4
    new-instance p3, Lcom/netease/mobile/link/UserData;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@ad.netease.win.163.com"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p5, 0x0

    invoke-direct {p3, p1, p2, p5, p5}, Lcom/netease/mobile/link/UserData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/netease/mobile/link/UserData;->markedMpayTicket()Lcom/netease/mobile/link/UserData;

    move-result-object p1

    new-instance p2, Lcom/netease/mobile/link/MobileLink$d;

    invoke-direct {p2, p0, p4}, Lcom/netease/mobile/link/MobileLink$d;-><init>(Lcom/netease/mobile/link/MobileLink;Lcom/netease/mobile/link/Callback;)V

    invoke-virtual {p0, p1, p2}, Lcom/netease/mobile/link/MobileLink;->showMobileLink(Lcom/netease/mobile/link/UserData;Lcom/netease/mobile/link/Callback;)V

    return-void
.end method

.method public updateMobileLink(Lcom/netease/mobile/link/UserData;Lcom/netease/mobile/link/Callback;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/netease/mobile/link/MobileLink;->linkMobile(ILcom/netease/mobile/link/UserData;Lcom/netease/mobile/link/Callback;)V

    return-void
.end method

.method public verifyMobileLink(Lcom/netease/mobile/link/UserData;Lcom/netease/mobile/link/Callback;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/netease/mobile/link/MobileLink;->linkMobile(ILcom/netease/mobile/link/UserData;Lcom/netease/mobile/link/Callback;)V

    return-void
.end method
