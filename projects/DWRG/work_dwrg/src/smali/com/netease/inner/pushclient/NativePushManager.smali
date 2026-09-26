.class public Lcom/netease/inner/pushclient/NativePushManager;
.super Ljava/lang/Object;
.source "NativePushManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static nativePushManager:Lcom/netease/inner/pushclient/NativePushManager;


# instance fields
.field public final PUSH_NAME_PREFIX:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNativePushHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/inner/pushclient/NativePushData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NGPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netease/inner/pushclient/NativePushManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_inner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/netease/inner/pushclient/NativePushManager;

    invoke-direct {v0}, Lcom/netease/inner/pushclient/NativePushManager;-><init>()V

    sput-object v0, Lcom/netease/inner/pushclient/NativePushManager;->nativePushManager:Lcom/netease/inner/pushclient/NativePushManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    .line 47
    const-string v0, "nn_"

    iput-object v0, p0, Lcom/netease/inner/pushclient/NativePushManager;->PUSH_NAME_PREFIX:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static getInstance()Lcom/netease/inner/pushclient/NativePushManager;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/netease/inner/pushclient/NativePushManager;->nativePushManager:Lcom/netease/inner/pushclient/NativePushManager;

    return-object v0
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method private stopPushWithPushName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pushName"    # Ljava/lang/String;

    .prologue
    .line 394
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopPushWithPushName pushName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    const/4 v1, 0x0

    .line 400
    :goto_0
    return v1

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/inner/pushclient/NativePushData;

    .line 399
    .local v0, "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/inner/pushclient/NativePushData;->stopAlarm(Landroid/content/Context;)V

    .line 400
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAllAlarms()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 443
    iget-object v6, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/netease/push/utils/PushSetting;->getNativePushNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    .line 444
    .local v3, "nativePushNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v6, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getAllAlarms, nativePushNameSet="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    .line 446
    .local v2, "ids":[Ljava/lang/String;
    const-string v6, "nn_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 447
    .local v5, "start":I
    const/4 v0, 0x0

    .line 448
    .local v0, "i":I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 453
    return-object v2

    .line 448
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 449
    .local v4, "pushName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "id":Ljava/lang/String;
    aput-object v1, v2, v0

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    .line 63
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/push/utils/PushSetting;->getNativePushNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 65
    .local v0, "nativePushNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nativePushNameSet:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public newAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "alarmID"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "ext"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "nn_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "pushName":Ljava/lang/String;
    sget-object v3, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "newAlarm alarmID:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", title:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ext:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pushName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v3, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/netease/push/utils/PushSetting;->getNativePushNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 85
    .local v1, "nativePushNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v3, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "nativePushNameSet:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/netease/push/utils/PushSetting;->getNativeNotification(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/inner/pushclient/NativePushData;

    move-result-object v0

    .line 89
    .local v0, "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    if-eqz v0, :cond_1

    .line 90
    iget-object v3, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .end local v0    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    iget-object v3, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/inner/pushclient/NativePushData;

    invoke-virtual {v3, p2, p3, p4}, Lcom/netease/inner/pushclient/NativePushData;->setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 92
    .restart local v0    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    :cond_1
    iget-object v3, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/netease/push/utils/PushSetting;->rmNativePushName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .end local v0    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    :cond_2
    new-instance v0, Lcom/netease/inner/pushclient/NativePushData;

    invoke-direct {v0, v2}, Lcom/netease/inner/pushclient/NativePushData;-><init>(Ljava/lang/String;)V

    .line 99
    .restart local v0    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    invoke-virtual {v0, p2, p3, p4}, Lcom/netease/inner/pushclient/NativePushData;->setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v3, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public removeAlarm(Ljava/lang/String;)Z
    .locals 4
    .param p1, "alarmID"    # Ljava/lang/String;

    .prologue
    .line 411
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeAlarm alarmID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {p0, p1}, Lcom/netease/inner/pushclient/NativePushManager;->stopPush(Ljava/lang/String;)Z

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nn_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "pushName":Ljava/lang/String;
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pushName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netease/push/utils/PushSetting;->rmNativePushName(Landroid/content/Context;Ljava/lang/String;)V

    .line 417
    const/4 v1, 0x1

    return v1
.end method

.method public removeAllAlarms()Z
    .locals 8

    .prologue
    .line 425
    iget-object v4, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/netease/push/utils/PushSetting;->getNativePushNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 426
    .local v1, "nativePushNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v4, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "removeAllAlarms, nativePushNameSet="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v4, "nn_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 428
    .local v3, "start":I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 433
    iget-object v4, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 434
    iget-object v4, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/netease/push/utils/PushSetting;->rmAllNativePushNames(Landroid/content/Context;)V

    .line 435
    const/4 v4, 0x1

    return v4

    .line 428
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 429
    .local v2, "pushName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "id":Ljava/lang/String;
    sget-object v5, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p0, v0}, Lcom/netease/inner/pushclient/NativePushManager;->stopPush(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setAlarmTime(Ljava/lang/String;II)Z
    .locals 6
    .param p1, "alarmID"    # Ljava/lang/String;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 106
    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/inner/pushclient/NativePushManager;->setAlarmTime(Ljava/lang/String;IIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAlarmTime(Ljava/lang/String;IIILjava/lang/String;)Z
    .locals 4
    .param p1, "alarmID"    # Ljava/lang/String;
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "second"    # I
    .param p5, "tz"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nn_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "pushName":Ljava/lang/String;
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v2, "setAlarmTime"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pushName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "alarmID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hour:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "minute:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "second:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tz:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/inner/pushclient/NativePushData;

    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/netease/inner/pushclient/NativePushData;->setTime(IIILjava/lang/String;)V

    .line 143
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 141
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlarmTime(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 6
    .param p1, "alarmID"    # Ljava/lang/String;
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "tz"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netease/inner/pushclient/NativePushManager;->setAlarmTime(Ljava/lang/String;IIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMonthRepeat(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "alarmID"    # Ljava/lang/String;
    .param p2, "monthMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nn_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "pushName":Ljava/lang/String;
    sget-object v2, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setMonthRepeat alarmID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", monthMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pushName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-nez p2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v1

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/inner/pushclient/NativePushData;

    invoke-virtual {v1, p2}, Lcom/netease/inner/pushclient/NativePushData;->setMonthRepeat(I)V

    .line 189
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setMonthRepeatBackwards(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "alarmID"    # Ljava/lang/String;
    .param p2, "monthMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nn_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "pushName":Ljava/lang/String;
    sget-object v2, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setMonthRepeatBackwards alarmID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", monthMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pushName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-nez p2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v1

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/inner/pushclient/NativePushData;

    invoke-virtual {v1, p2}, Lcom/netease/inner/pushclient/NativePushData;->setMonthRepeatBackwards(I)V

    .line 212
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setOnce(Ljava/lang/String;III)Z
    .locals 4
    .param p1, "alarmID"    # Ljava/lang/String;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nn_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "pushName":Ljava/lang/String;
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setOnce alarmID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", year:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", month:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", day:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pushName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/inner/pushclient/NativePushData;

    invoke-virtual {v1, p2, p3, p4}, Lcom/netease/inner/pushclient/NativePushData;->setOnce(III)V

    .line 236
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 234
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOnceUnixtime(Ljava/lang/String;J)Z
    .locals 4
    .param p1, "alarmID"    # Ljava/lang/String;
    .param p2, "ut"    # J

    .prologue
    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nn_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "pushName":Ljava/lang/String;
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setOnceUnixtime alarmID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ut:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pushName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/inner/pushclient/NativePushData;

    invoke-virtual {v1, p2, p3}, Lcom/netease/inner/pushclient/NativePushData;->setOnceUnixtime(J)V

    .line 256
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 254
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWeekRepeat(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "alarmID"    # Ljava/lang/String;
    .param p2, "weekMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nn_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "pushName":Ljava/lang/String;
    sget-object v2, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setWeekRepeat alarmID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", weekMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pushName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/16 v2, 0x7f

    if-gt p2, v2, :cond_0

    if-gtz p2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v1

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/inner/pushclient/NativePushData;

    invoke-virtual {v1, p2}, Lcom/netease/inner/pushclient/NativePushData;->setWeekRepeat(I)V

    .line 166
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public startAlarm(Lcom/netease/inner/pushclient/NativePushData;)Z
    .locals 11
    .param p1, "nativePushData"    # Lcom/netease/inner/pushclient/NativePushData;

    .prologue
    const/4 v7, 0x0

    .line 309
    sget-object v6, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "startAlarm nativePushData:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", this:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    if-nez p1, :cond_0

    .line 311
    sget-object v6, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v8, "nativePushData is null"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 367
    :goto_0
    return v6

    .line 314
    :cond_0
    invoke-virtual {p1}, Lcom/netease/inner/pushclient/NativePushData;->getPushName()Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "pushName":Ljava/lang/String;
    sget-object v6, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "pushName:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v6, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/netease/push/utils/PushSetting;->getNativePushNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 317
    .local v1, "nativePushNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v6, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "nativePushNameSet:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 320
    iget-object v6, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/netease/push/utils/PushSetting;->getNativeNotification(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/inner/pushclient/NativePushData;

    move-result-object v0

    .line 321
    .local v0, "nativePushDataTemp":Lcom/netease/inner/pushclient/NativePushData;
    if-eqz v0, :cond_2

    .line 322
    iget-object v6, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .end local v0    # "nativePushDataTemp":Lcom/netease/inner/pushclient/NativePushData;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/netease/inner/pushclient/NativePushData;->getNotifyMessage()Lcom/netease/push/utils/NotifyMessage;

    move-result-object v2

    .line 329
    .local v2, "notifyMessage":Lcom/netease/push/utils/NotifyMessage;
    iget-object v6, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 330
    iget-object v6, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/inner/pushclient/NativePushData;

    iget-object v8, v2, Lcom/netease/push/utils/NotifyMessage;->mTitle:Ljava/lang/String;

    iget-object v9, v2, Lcom/netease/push/utils/NotifyMessage;->mMsg:Ljava/lang/String;

    iget-object v10, v2, Lcom/netease/push/utils/NotifyMessage;->mExt:Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v10}, Lcom/netease/inner/pushclient/NativePushData;->setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_2
    iget-object v6, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/inner/pushclient/NativePushData;

    .line 336
    .local v3, "pushData":Lcom/netease/inner/pushclient/NativePushData;
    iget-object v6, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/netease/inner/pushclient/NativePushData;->createPushID(Landroid/content/Context;)V

    .line 337
    sget-object v6, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "pushData.getPushName():"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/netease/inner/pushclient/NativePushData;->getPushName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v3}, Lcom/netease/inner/pushclient/NativePushData;->getPushName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 339
    sget-object v6, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v8, "invalid pushData: inconsistent pushName"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 340
    goto/16 :goto_0

    .line 324
    .end local v2    # "notifyMessage":Lcom/netease/push/utils/NotifyMessage;
    .end local v3    # "pushData":Lcom/netease/inner/pushclient/NativePushData;
    .restart local v0    # "nativePushDataTemp":Lcom/netease/inner/pushclient/NativePushData;
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 325
    iget-object v6, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/netease/push/utils/PushSetting;->rmNativePushName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 332
    .end local v0    # "nativePushDataTemp":Lcom/netease/inner/pushclient/NativePushData;
    .restart local v2    # "notifyMessage":Lcom/netease/push/utils/NotifyMessage;
    :cond_3
    iget-object v6, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 343
    .restart local v3    # "pushData":Lcom/netease/inner/pushclient/NativePushData;
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 345
    invoke-direct {p0, v4}, Lcom/netease/inner/pushclient/NativePushManager;->stopPushWithPushName(Ljava/lang/String;)Z

    .line 347
    :cond_5
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 348
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    const/16 v8, 0x1f4

    if-lt v6, v8, :cond_6

    .line 349
    sget-object v6, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v8, "exceed max alarm count!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v6, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v7

    .line 351
    goto/16 :goto_0

    .line 353
    :cond_6
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v6, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/netease/push/utils/PushSetting;->setNativePushNames(Landroid/content/Context;Ljava/util/Set;)V

    .line 357
    :cond_7
    iget-object v6, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/netease/push/utils/PushSetting;->setNativeNotification(Landroid/content/Context;Lcom/netease/inner/pushclient/NativePushData;)Z

    move-result v5

    .line 358
    .local v5, "ret":Z
    if-nez v5, :cond_8

    .line 359
    sget-object v6, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v8, "PushSetting.setNativeNotification error"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v6, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 362
    iget-object v6, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/netease/push/utils/PushSetting;->rmNativePushName(Landroid/content/Context;Ljava/lang/String;)V

    move v6, v7

    .line 363
    goto/16 :goto_0

    .line 365
    :cond_8
    sget-object v6, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v7, "pushData.startAlarm"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v6, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/netease/inner/pushclient/NativePushData;->startAlarm(Landroid/content/Context;)V

    .line 367
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public startAlarm(Ljava/lang/String;)Z
    .locals 8
    .param p1, "alarmID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "nn_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "pushName":Ljava/lang/String;
    sget-object v5, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "startAlarm alarmID:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pushName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v5, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 270
    sget-object v5, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v6, "mNativePushHashMap does not contain pushName"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_0
    return v4

    .line 273
    :cond_0
    iget-object v5, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/inner/pushclient/NativePushData;

    .line 274
    .local v0, "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    iget-object v5, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/netease/inner/pushclient/NativePushData;->createPushID(Landroid/content/Context;)V

    .line 275
    sget-object v5, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "nativePushData.getPushName():"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/inner/pushclient/NativePushData;->getPushName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v0}, Lcom/netease/inner/pushclient/NativePushData;->getPushName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 277
    sget-object v5, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v6, "invalid nativePushData: inconsistent pushName"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    :cond_1
    iget-object v5, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/netease/push/utils/PushSetting;->getNativePushNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 281
    .local v1, "nativePushNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v5, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "nativePushNameSet:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 284
    invoke-direct {p0, v2}, Lcom/netease/inner/pushclient/NativePushManager;->stopPushWithPushName(Ljava/lang/String;)Z

    .line 286
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 287
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    const/16 v6, 0x1f4

    if-lt v5, v6, :cond_3

    .line 288
    sget-object v5, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v6, "exceed max alarm count!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v5, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 292
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v5, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/netease/push/utils/PushSetting;->setNativePushNames(Landroid/content/Context;Ljava/util/Set;)V

    .line 295
    :cond_4
    iget-object v5, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/netease/push/utils/PushSetting;->setNativeNotification(Landroid/content/Context;Lcom/netease/inner/pushclient/NativePushData;)Z

    move-result v3

    .line 296
    .local v3, "ret":Z
    if-nez v3, :cond_5

    .line 297
    sget-object v5, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v6, "PushSetting.setNativeNotification error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v5, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 300
    iget-object v5, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/netease/push/utils/PushSetting;->rmNativePushName(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 303
    :cond_5
    sget-object v4, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v5, "nativePushData.startAlarm"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v4, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/netease/inner/pushclient/NativePushData;->startAlarm(Landroid/content/Context;)V

    .line 305
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public stopPush(Ljava/lang/String;)Z
    .locals 5
    .param p1, "alarmID"    # Ljava/lang/String;

    .prologue
    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nn_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "pushName":Ljava/lang/String;
    sget-object v2, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stopPush alarmID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pushName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    iget-object v2, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    check-cast v0, Lcom/netease/inner/pushclient/NativePushData;

    .line 386
    .restart local v0    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    :goto_0
    if-eqz v0, :cond_1

    .line 387
    iget-object v2, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/netease/inner/pushclient/NativePushData;->stopAlarm(Landroid/content/Context;)V

    .line 388
    const/4 v2, 0x1

    .line 390
    :goto_1
    return v2

    .line 384
    :cond_0
    iget-object v2, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/netease/push/utils/PushSetting;->getNativeNotification(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/inner/pushclient/NativePushData;

    move-result-object v0

    goto :goto_0

    .line 390
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
