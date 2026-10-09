.class public interface abstract Lcom/onesignal/user/IUserManager;
.super Ljava/lang/Object;
.source "IUserManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u001e\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003H&J\u001c\u0010\u0010\u001a\u00020\r2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0012H&J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0003H&J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0017H&J\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u0003H&J\u0018\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0003H&J\u001c\u0010\u001d\u001a\u00020\r2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0012H&J\u0014\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0012H&J\u0010\u0010 \u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0003H&J\u0016\u0010!\u001a\u00020\r2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00030#H&J\u0010\u0010$\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0003H&J\u0010\u0010%\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0017H&J\u0010\u0010&\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u0003H&J\u0010\u0010\'\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u0003H&J\u0016\u0010(\u001a\u00020\r2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00030#H&J\u0010\u0010*\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u0003H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u0012\u0010\u0008\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onesignal/user/IUserManager;",
        "",
        "externalId",
        "",
        "getExternalId",
        "()Ljava/lang/String;",
        "onesignalId",
        "getOnesignalId",
        "pushSubscription",
        "Lcom/onesignal/user/subscriptions/IPushSubscription;",
        "getPushSubscription",
        "()Lcom/onesignal/user/subscriptions/IPushSubscription;",
        "addAlias",
        "",
        "label",
        "id",
        "addAliases",
        "aliases",
        "",
        "addEmail",
        "email",
        "addObserver",
        "observer",
        "Lcom/onesignal/user/state/IUserStateObserver;",
        "addSms",
        "sms",
        "addTag",
        "key",
        "value",
        "addTags",
        "tags",
        "getTags",
        "removeAlias",
        "removeAliases",
        "labels",
        "",
        "removeEmail",
        "removeObserver",
        "removeSms",
        "removeTag",
        "removeTags",
        "keys",
        "setLanguage",
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


# virtual methods
.method public abstract addAlias(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addAliases(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addEmail(Ljava/lang/String;)V
.end method

.method public abstract addObserver(Lcom/onesignal/user/state/IUserStateObserver;)V
.end method

.method public abstract addSms(Ljava/lang/String;)V
.end method

.method public abstract addTag(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addTags(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getExternalId()Ljava/lang/String;
.end method

.method public abstract getOnesignalId()Ljava/lang/String;
.end method

.method public abstract getPushSubscription()Lcom/onesignal/user/subscriptions/IPushSubscription;
.end method

.method public abstract getTags()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeAlias(Ljava/lang/String;)V
.end method

.method public abstract removeAliases(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeEmail(Ljava/lang/String;)V
.end method

.method public abstract removeObserver(Lcom/onesignal/user/state/IUserStateObserver;)V
.end method

.method public abstract removeSms(Ljava/lang/String;)V
.end method

.method public abstract removeTag(Ljava/lang/String;)V
.end method

.method public abstract removeTags(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLanguage(Ljava/lang/String;)V
.end method
