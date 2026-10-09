.class public interface abstract Lcom/ryg/DLCallBackManager$SDK2Plugin;
.super Ljava/lang/Object;
.source "DLCallBackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ryg/DLCallBackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SDK2Plugin"
.end annotation


# static fields
.field public static final CALL_HTML:I = 0x3

.field public static final CALL_INITNET:I = 0x4

.field public static final CALL_INVITE_RESULT:I = 0x7

.field public static final CALL_INVITE_RESULT_KEY:Ljava/lang/String; = "InviteResult"

.field public static final CALL_MSDK_WEB:I = 0x6

.field public static final CALL_MSDK_WEB_KEY:Ljava/lang/String; = "MsdkWeb"

.field public static final CALL_PLAYER:I = 0x5

.field public static final CALL_UNITY:I = 0x1

.field public static final CALL_UNITY_INIT_FRIEND_SHIP_LIST:I = 0xb

.field public static final CALL_UNITY_INIT_INVITE_LIST:I = 0xa

.field public static final CALL_UNITY_REFRESH_INVITE_LIST:I = 0x9

.field public static final CALL_UNITY_REFRESH_INVITE_LIST_KEY:Ljava/lang/String; = "UnityRefreshInvitelist"

.field public static final CALL_UNITY_SEND_INVITE_REQ:I = 0x8

.field public static final CALL_UNITY_SEND_INVITE_REQ_KEY:Ljava/lang/String; = "UnitySendInviteReq"

.field public static final GET_FONT:I = 0x2


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
