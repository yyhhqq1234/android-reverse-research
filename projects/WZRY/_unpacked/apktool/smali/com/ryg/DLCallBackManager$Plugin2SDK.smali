.class public interface abstract Lcom/ryg/DLCallBackManager$Plugin2SDK;
.super Ljava/lang/Object;
.source "DLCallBackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ryg/DLCallBackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Plugin2SDK"
.end annotation


# static fields
.field public static final CALL_PLUGIN_INIT_FRIEND_SHIP_LIST:I = 0x6

.field public static final CALL_PLUGIN_INIT_FRIEND_SHIP_LIST_KEY:Ljava/lang/String; = "CallPluginInitFriendShipList"

.field public static final CALL_PLUGIN_INIT_INVITE_LIST:I = 0x5

.field public static final CALL_PLUGIN_INIT_INVITE_LIST_KEY:Ljava/lang/String; = "CallPluginInitInviteList"

.field public static final INITNETWORK_MESSAGE:I = 0x2

.field public static final INVITATION_KEY_1:Ljava/lang/String; = "Message"

.field public static final INVITATION_MESSAGE:I = 0x1

.field public static final NOTIFY_TV_OPEN_INVITE:I = 0x3

.field public static final NOTIFY_TV_OPEN_INVITE_KEY:Ljava/lang/String; = "NotifyTvOpenInvite"

.field public static final NOTIFY_TV_REFRESH_INVITE_LIST:I = 0x4

.field public static final NOTIFY_TV_REFRESH_INVITE_LIST_KEY:Ljava/lang/String; = "NotifyTvRefreshInvitelist"


# virtual methods
.method public abstract callback(ILjava/util/Map;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
