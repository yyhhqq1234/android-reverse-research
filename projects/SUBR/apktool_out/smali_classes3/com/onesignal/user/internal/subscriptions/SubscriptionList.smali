.class public final Lcom/onesignal/user/internal/subscriptions/SubscriptionList;
.super Ljava/lang/Object;
.source "SubscriptionList.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubscriptionList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscriptionList.kt\ncom/onesignal/user/internal/subscriptions/SubscriptionList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,45:1\n800#2,11:46\n800#2,11:57\n800#2,11:68\n288#2,2:79\n288#2,2:81\n*S KotlinDebug\n*F\n+ 1 SubscriptionList.kt\ncom/onesignal/user/internal/subscriptions/SubscriptionList\n*L\n17#1:46,11\n23#1:57,11\n29#1:68,11\n35#1:79,2\n42#1:81,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001b\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0017\u001a\u00020\u0015R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\tR\u0011\u0010\r\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onesignal/user/internal/subscriptions/SubscriptionList;",
        "",
        "collection",
        "",
        "Lcom/onesignal/user/subscriptions/ISubscription;",
        "_fallbackPushSub",
        "Lcom/onesignal/user/subscriptions/IPushSubscription;",
        "(Ljava/util/List;Lcom/onesignal/user/subscriptions/IPushSubscription;)V",
        "getCollection",
        "()Ljava/util/List;",
        "emails",
        "Lcom/onesignal/user/subscriptions/IEmailSubscription;",
        "getEmails",
        "push",
        "getPush",
        "()Lcom/onesignal/user/subscriptions/IPushSubscription;",
        "smss",
        "Lcom/onesignal/user/subscriptions/ISmsSubscription;",
        "getSmss",
        "getByEmail",
        "email",
        "",
        "getBySMS",
        "sms",
        "com.onesignal.core"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _fallbackPushSub:Lcom/onesignal/user/subscriptions/IPushSubscription;

.field private final collection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/user/subscriptions/ISubscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onesignal/user/subscriptions/IPushSubscription;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onesignal/user/subscriptions/ISubscription;",
            ">;",
            "Lcom/onesignal/user/subscriptions/IPushSubscription;",
            ")V"
        }
    .end annotation

    const-string v0, "collection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_fallbackPushSub"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onesignal/user/internal/subscriptions/SubscriptionList;->collection:Ljava/util/List;

    iput-object p2, p0, Lcom/onesignal/user/internal/subscriptions/SubscriptionList;->_fallbackPushSub:Lcom/onesignal/user/subscriptions/IPushSubscription;

    return-void
.end method


# virtual methods
.method public final getByEmail(Ljava/lang/String;)Lcom/onesignal/user/subscriptions/IEmailSubscription;
    .locals 3

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/onesignal/user/internal/subscriptions/SubscriptionList;->getEmails()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 79
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onesignal/user/subscriptions/IEmailSubscription;

    .line 35
    invoke-interface {v2}, Lcom/onesignal/user/subscriptions/IEmailSubscription;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 80
    :goto_0
    check-cast v1, Lcom/onesignal/user/subscriptions/IEmailSubscription;

    return-object v1
.end method

.method public final getBySMS(Ljava/lang/String;)Lcom/onesignal/user/subscriptions/ISmsSubscription;
    .locals 3

    const-string v0, "sms"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/onesignal/user/internal/subscriptions/SubscriptionList;->getSmss()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 81
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onesignal/user/subscriptions/ISmsSubscription;

    .line 42
    invoke-interface {v2}, Lcom/onesignal/user/subscriptions/ISmsSubscription;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 82
    :goto_0
    check-cast v1, Lcom/onesignal/user/subscriptions/ISmsSubscription;

    return-object v1
.end method

.method public final getCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/user/subscriptions/ISubscription;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/onesignal/user/internal/subscriptions/SubscriptionList;->collection:Ljava/util/List;

    return-object v0
.end method

.method public final getEmails()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/user/subscriptions/IEmailSubscription;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/onesignal/user/internal/subscriptions/SubscriptionList;->collection:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 66
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/onesignal/user/subscriptions/IEmailSubscription;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final getPush()Lcom/onesignal/user/subscriptions/IPushSubscription;
    .locals 4

    .line 17
    iget-object v0, p0, Lcom/onesignal/user/internal/subscriptions/SubscriptionList;->collection:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 55
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/onesignal/user/subscriptions/IPushSubscription;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 17
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/user/subscriptions/IPushSubscription;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/onesignal/user/internal/subscriptions/SubscriptionList;->_fallbackPushSub:Lcom/onesignal/user/subscriptions/IPushSubscription;

    :cond_2
    return-object v0
.end method

.method public final getSmss()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/user/subscriptions/ISmsSubscription;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/onesignal/user/internal/subscriptions/SubscriptionList;->collection:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 77
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/onesignal/user/subscriptions/ISmsSubscription;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
