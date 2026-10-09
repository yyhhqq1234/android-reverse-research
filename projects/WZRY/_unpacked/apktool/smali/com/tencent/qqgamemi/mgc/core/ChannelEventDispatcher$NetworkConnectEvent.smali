.class public Lcom/tencent/qqgamemi/mgc/core/ChannelEventDispatcher$NetworkConnectEvent;
.super Ljava/lang/Object;
.source "ChannelEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqgamemi/mgc/core/ChannelEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkConnectEvent"
.end annotation


# static fields
.field public static final EVENT_TYPE_BREAKDONW:I = 0x3

.field public static final EVENT_TYPE_CONNECTED:I = 0x1

.field public static final EVENT_TYPE_DISCONNECTED:I = 0x2


# instance fields
.field private eventType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/tencent/qqgamemi/mgc/core/ChannelEventDispatcher$NetworkConnectEvent;->eventType:I

    .line 80
    return-void
.end method


# virtual methods
.method public getEventType()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/tencent/qqgamemi/mgc/core/ChannelEventDispatcher$NetworkConnectEvent;->eventType:I

    return v0
.end method
