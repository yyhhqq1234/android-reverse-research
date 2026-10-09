.class Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
.super Ljava/lang/Object;
.source "RemoteMsgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GameEvent"
.end annotation


# static fields
.field public static final METHOD_BROADCAST_STATE:Ljava/lang/String; = "broadcastHeartbeat"

.field public static final METHOD_GAME_START:Ljava/lang/String; = "notifyGameStart"

.field public static final METHOD_INIT_EVENT:Ljava/lang/String; = "sdkInited"

.field public static final METHOD_NOTIFY_GAME_EVENT:Ljava/lang/String; = "notifyGameEvent"

.field public static final METHOD_NOTIFY_GAME_STATE:Ljava/lang/String; = "notifyGameState"

.field public static final METHOD_REQ_PERM:Ljava/lang/String; = "reqPermission"


# instance fields
.field public args:[Ljava/lang/Object;

.field public name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$1;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;-><init>()V

    return-void
.end method
