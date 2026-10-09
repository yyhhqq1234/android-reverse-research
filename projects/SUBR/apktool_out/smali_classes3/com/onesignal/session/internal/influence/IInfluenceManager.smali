.class public interface abstract Lcom/onesignal/session/internal/influence/IInfluenceManager;
.super Ljava/lang/Object;
.source "IInfluenceManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\nH&J\u0008\u0010\r\u001a\u00020\u0008H&J\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\nH&R\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onesignal/session/internal/influence/IInfluenceManager;",
        "",
        "influences",
        "",
        "Lcom/onesignal/session/internal/influence/Influence;",
        "getInfluences",
        "()Ljava/util/List;",
        "onDirectInfluenceFromIAM",
        "",
        "messageId",
        "",
        "onDirectInfluenceFromNotification",
        "notificationId",
        "onInAppMessageDismissed",
        "onInAppMessageDisplayed",
        "onNotificationReceived",
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
.method public abstract getInfluences()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/session/internal/influence/Influence;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onDirectInfluenceFromIAM(Ljava/lang/String;)V
.end method

.method public abstract onDirectInfluenceFromNotification(Ljava/lang/String;)V
.end method

.method public abstract onInAppMessageDismissed()V
.end method

.method public abstract onInAppMessageDisplayed(Ljava/lang/String;)V
.end method

.method public abstract onNotificationReceived(Ljava/lang/String;)V
.end method
