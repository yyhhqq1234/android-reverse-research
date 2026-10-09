.class Lcom/tencent/component/event/ObserverBean;
.super Ljava/lang/Object;
.source "ObserverBean.java"


# static fields
.field public static final DEFAULT_INVOKE_METHOD_NAME:Ljava/lang/String; = "onNotify"

.field private static sMethodsCache:Landroid/support/v4/util/LruCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final warnings:Z = true


# instance fields
.field private final mEventSourceSenderReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mInvokationMethod:Ljava/lang/String;

.field public final mInvokeInUIThread:Z

.field private final mObservingObjectHashCode:I

.field private final mSpecifiedSenderHashCode:I

.field private final observingObjectReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/tencent/component/event/ObserverBean;->sMethodsCache:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "observingObject"    # Ljava/lang/Object;
    .param p2, "sender"    # Ljava/lang/Object;
    .param p3, "invokationMethod"    # Ljava/lang/String;
    .param p4, "invokeInUIThread"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ObserverBean cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    if-nez p3, :cond_1

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mInvokationMethod cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/component/event/ObserverBean;->observingObjectReference:Ljava/lang/ref/WeakReference;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/tencent/component/event/ObserverBean;->mObservingObjectHashCode:I

    .line 56
    if-eqz p2, :cond_2

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/component/event/ObserverBean;->mEventSourceSenderReference:Ljava/lang/ref/WeakReference;

    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/tencent/component/event/ObserverBean;->mSpecifiedSenderHashCode:I

    .line 63
    :goto_0
    iput-object p3, p0, Lcom/tencent/component/event/ObserverBean;->mInvokationMethod:Ljava/lang/String;

    .line 64
    iput-boolean p4, p0, Lcom/tencent/component/event/ObserverBean;->mInvokeInUIThread:Z

    .line 65
    return-void

    .line 60
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/component/event/ObserverBean;->mEventSourceSenderReference:Ljava/lang/ref/WeakReference;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/component/event/ObserverBean;->mSpecifiedSenderHashCode:I

    goto :goto_0
.end method

.method private error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 221
    const-string v0, "EventCenter"

    invoke-static {v0, p1}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method private getMethod()Ljava/lang/reflect/Method;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/tencent/component/event/ObserverBean;->getObservingObject()Ljava/lang/Object;

    move-result-object v4

    .line 180
    .local v4, "observingObject":Ljava/lang/Object;
    iget-object v3, p0, Lcom/tencent/component/event/ObserverBean;->mInvokationMethod:Ljava/lang/String;

    .line 181
    .local v3, "metohdName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 182
    .local v6, "targetMethod":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 183
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 184
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, v3}, Lcom/tencent/component/event/ObserverBean;->getMethodFromCache(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 185
    if-nez v6, :cond_4

    .line 186
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 187
    .local v2, "methods":[Ljava/lang/reflect/Method;
    if-eqz v2, :cond_4

    .line 188
    array-length v9, v2

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_4

    aget-object v1, v2, v7

    .line 189
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 190
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 191
    .local v5, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v10, v5

    if-ne v10, v12, :cond_2

    .line 192
    aget-object v10, v5, v8

    const-class v11, Lcom/tencent/component/event/Event;

    if-ne v10, v11, :cond_1

    .line 193
    move-object v6, v1

    .line 194
    invoke-static {v0, v3, v1}, Lcom/tencent/component/event/ObserverBean;->putMethodToCache(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 188
    .end local v5    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 196
    .restart local v5    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Looking to invoke \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/tencent/component/event/ObserverBean;->mInvokationMethod:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\', found in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " but parameterClass does not match. Expected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Lcom/tencent/component/event/Event;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", potential invokation method has "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v5, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/tencent/component/event/ObserverBean;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 199
    :cond_2
    array-length v10, v5

    if-nez v10, :cond_3

    .line 200
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Looking to invoke \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/tencent/component/event/ObserverBean;->mInvokationMethod:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\', found in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " but has no parameter"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/tencent/component/event/ObserverBean;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 201
    :cond_3
    array-length v10, v5

    if-le v10, v12, :cond_0

    .line 202
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Looking to invoke \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/tencent/component/event/ObserverBean;->mInvokationMethod:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\', found in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " but there are too many parameters"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/tencent/component/event/ObserverBean;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 209
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "methods":[Ljava/lang/reflect/Method;
    .end local v5    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    return-object v6
.end method

.method private static getMethodFromCache(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    sget-object v1, Lcom/tencent/component/event/ObserverBean;->sMethodsCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 157
    .local v0, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 161
    .end local v0    # "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static putMethodToCache(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 166
    sget-object v1, Lcom/tencent/component/event/ObserverBean;->sMethodsCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 167
    .local v0, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 169
    .restart local v0    # "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    sget-object v1, Lcom/tencent/component/event/ObserverBean;->sMethodsCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p0, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .end local v0    # "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_1
    return-void
.end method

.method private warn(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string v0, "EventCenter"

    invoke-static {v0, p1}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    if-ne p0, p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 85
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 86
    check-cast v0, Lcom/tencent/component/event/ObserverBean;

    .line 87
    .local v0, "other":Lcom/tencent/component/event/ObserverBean;
    iget-object v3, p0, Lcom/tencent/component/event/ObserverBean;->mInvokationMethod:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 88
    iget-object v3, v0, Lcom/tencent/component/event/ObserverBean;->mInvokationMethod:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    iget-object v3, p0, Lcom/tencent/component/event/ObserverBean;->mInvokationMethod:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/component/event/ObserverBean;->mInvokationMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 91
    goto :goto_0

    .line 92
    :cond_5
    iget-boolean v3, p0, Lcom/tencent/component/event/ObserverBean;->mInvokeInUIThread:Z

    iget-boolean v4, v0, Lcom/tencent/component/event/ObserverBean;->mInvokeInUIThread:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 93
    goto :goto_0

    .line 94
    :cond_6
    iget v3, p0, Lcom/tencent/component/event/ObserverBean;->mObservingObjectHashCode:I

    iget v4, v0, Lcom/tencent/component/event/ObserverBean;->mObservingObjectHashCode:I

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 95
    goto :goto_0

    .line 96
    :cond_7
    iget v3, p0, Lcom/tencent/component/event/ObserverBean;->mSpecifiedSenderHashCode:I

    iget v4, v0, Lcom/tencent/component/event/ObserverBean;->mSpecifiedSenderHashCode:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 97
    goto :goto_0
.end method

.method public getEventSourceSender()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/component/event/ObserverBean;->mEventSourceSenderReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/tencent/component/event/ObserverBean;->mEventSourceSenderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObservingObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tencent/component/event/ObserverBean;->observingObjectReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 69
    const/16 v0, 0x1f

    .line 70
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 71
    .local v1, "result":I
    iget-object v2, p0, Lcom/tencent/component/event/ObserverBean;->mInvokationMethod:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 72
    mul-int/lit8 v3, v1, 0x1f

    iget-boolean v2, p0, Lcom/tencent/component/event/ObserverBean;->mInvokeInUIThread:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    :goto_1
    add-int v1, v3, v2

    .line 73
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/tencent/component/event/ObserverBean;->mObservingObjectHashCode:I

    add-int v1, v2, v3

    .line 74
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/tencent/component/event/ObserverBean;->mSpecifiedSenderHashCode:I

    add-int v1, v2, v3

    .line 75
    return v1

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/tencent/component/event/ObserverBean;->mInvokationMethod:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 72
    :cond_1
    const/16 v2, 0x4d5

    goto :goto_1
.end method

.method public invocationMethodExists()Z
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/tencent/component/event/ObserverBean;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method invoke(Ljava/lang/Object;)V
    .locals 5
    .param p1, "args"    # Ljava/lang/Object;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/tencent/component/event/ObserverBean;->getObservingObject()Ljava/lang/Object;

    move-result-object v2

    .line 128
    .local v2, "observingObject":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 129
    instance-of v3, v2, Lcom/tencent/component/event/Observer;

    if-eqz v3, :cond_1

    const-string v3, "onNotify"

    iget-object v4, p0, Lcom/tencent/component/event/ObserverBean;->mInvokationMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    check-cast v2, Lcom/tencent/component/event/Observer;

    .end local v2    # "observingObject":Ljava/lang/Object;
    check-cast p1, Lcom/tencent/component/event/Event;

    .end local p1    # "args":Ljava/lang/Object;
    invoke-interface {v2, p1}, Lcom/tencent/component/event/Observer;->onNotify(Lcom/tencent/component/event/Event;)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 132
    .restart local v2    # "observingObject":Ljava/lang/Object;
    .restart local p1    # "args":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0}, Lcom/tencent/component/event/ObserverBean;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 133
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_2

    .line 135
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 136
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/tencent/component/event/ObserverBean;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "method->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/component/event/ObserverBean;->mInvokationMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not exists in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tencent/component/event/ObserverBean;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObserverBean [observer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/component/event/ObserverBean;->getObservingObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " invk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/component/event/ObserverBean;->mInvokationMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
