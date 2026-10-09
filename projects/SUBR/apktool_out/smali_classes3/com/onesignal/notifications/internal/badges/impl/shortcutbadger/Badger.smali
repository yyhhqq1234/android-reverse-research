.class public interface abstract Lcom/onesignal/notifications/internal/badges/impl/shortcutbadger/Badger;
.super Ljava/lang/Object;
.source "Badger.java"


# virtual methods
.method public abstract executeBadge(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onesignal/notifications/internal/badges/impl/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation
.end method

.method public abstract getSupportLaunchers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
