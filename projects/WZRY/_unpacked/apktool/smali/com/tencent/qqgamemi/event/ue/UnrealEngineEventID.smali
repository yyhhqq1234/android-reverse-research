.class public Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;
.super Ljava/lang/Object;
.source "UnrealEngineEventID.java"


# static fields
.field public static GAMEJOY_SDK_CLOSED_AR_RECORDING_NOTIFICATION:I

.field public static GAMEJOY_SDK_CLOSED_JUDGEMENT_NOTIFICATION:I

.field public static GAMEJOY_SDK_FEATURE_CHECK_RESULT:I

.field public static GAMEJOY_SDK_FORCESTOP_AR_RECORDING_NOTIFYCATION:I

.field public static GAMEJOY_SDK_FORCESTOP_JUDGEMENT_NOTIFICATION:I

.field public static GAMEJOY_SDK_PERMISSION_CHECK_RESULT:I

.field public static GAMEJOY_SHOW_VIDEO_PLAYER_NOTIFICATION:I

.field public static GAMEJOY_STARTRECORDING_RESULT:I

.field public static GAMEJOY_START_AR_RECORDING_RESULT:I

.field public static GAMEJOY_START_JUDGEMENT_RECORDING_RESULT:I

.field public static GAMEJOY_START_MANUAL_RECORDING_RESULT:I

.field public static GAMEJOY_STOPRECORDING_RESULT:I

.field public static GAMEJOY_VIDEO_SHARE_NOTIFICATION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x1

    sput v0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;->GAMEJOY_SDK_FEATURE_CHECK_RESULT:I

    .line 9
    const/4 v0, 0x2

    sput v0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;->GAMEJOY_STARTRECORDING_RESULT:I

    .line 10
    const/4 v0, 0x3

    sput v0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;->GAMEJOY_STOPRECORDING_RESULT:I

    .line 11
    const/4 v0, 0x4

    sput v0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;->GAMEJOY_START_MANUAL_RECORDING_RESULT:I

    .line 12
    const/4 v0, 0x5

    sput v0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;->GAMEJOY_START_JUDGEMENT_RECORDING_RESULT:I

    .line 13
    const/4 v0, 0x6

    sput v0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;->GAMEJOY_SDK_PERMISSION_CHECK_RESULT:I

    .line 14
    const/4 v0, 0x7

    sput v0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;->GAMEJOY_SDK_CLOSED_JUDGEMENT_NOTIFICATION:I

    .line 15
    const/16 v0, 0x8

    sput v0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;->GAMEJOY_SDK_FORCESTOP_JUDGEMENT_NOTIFICATION:I

    .line 16
    const/16 v0, 0x9

    sput v0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;->GAMEJOY_SHOW_VIDEO_PLAYER_NOTIFICATION:I

    .line 17
    const/16 v0, 0xa

    sput v0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;->GAMEJOY_VIDEO_SHARE_NOTIFICATION:I

    .line 18
    const/16 v0, 0xb

    sput v0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;->GAMEJOY_START_AR_RECORDING_RESULT:I

    .line 19
    const/16 v0, 0xc

    sput v0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;->GAMEJOY_SDK_CLOSED_AR_RECORDING_NOTIFICATION:I

    .line 20
    const/16 v0, 0xd

    sput v0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;->GAMEJOY_SDK_FORCESTOP_AR_RECORDING_NOTIFYCATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
