.class public Lcom/tencent/qqgamemi/event/EventID;
.super Ljava/lang/Object;
.source "EventID.java"


# static fields
.field public static GAMEJOY_SDK_CLOSED_AR_NOTIFICATION:Ljava/lang/String;

.field public static GAMEJOY_SDK_CLOSED_JUDGEMENT_NOTIFICATION:Ljava/lang/String;

.field public static GAMEJOY_SDK_FEATURE_CHECK_RESULT:Ljava/lang/String;

.field public static GAMEJOY_SDK_FORCESTOP_AR_NOTIFICATION:Ljava/lang/String;

.field public static GAMEJOY_SDK_FORCESTOP_JUDGEMENT_NOTIFICATION:Ljava/lang/String;

.field public static GAMEJOY_SDK_PERMISSION_CHECK_RESULT:Ljava/lang/String;

.field public static GAMEJOY_SHOW_VIDEO_PLAYER_NOTIFICATION:Ljava/lang/String;

.field public static GAMEJOY_STARTRECORDING_RESULT:Ljava/lang/String;

.field public static GAMEJOY_START_AR_RECORDING_RESULT:Ljava/lang/String;

.field public static GAMEJOY_START_JUDGEMENT_RECORDING_RESULT:Ljava/lang/String;

.field public static GAMEJOY_START_MANUAL_RECORDING_RESULT:Ljava/lang/String;

.field public static GAMEJOY_STOPRECORDING_RESULT:Ljava/lang/String;

.field public static GAMEJOY_VIDEO_SHARE_NOTIFICATION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "GamejoySDKFeatureCheckResult"

    sput-object v0, Lcom/tencent/qqgamemi/event/EventID;->GAMEJOY_SDK_FEATURE_CHECK_RESULT:Ljava/lang/String;

    .line 9
    const-string v0, "GamejoyStartRecordingResult"

    sput-object v0, Lcom/tencent/qqgamemi/event/EventID;->GAMEJOY_STARTRECORDING_RESULT:Ljava/lang/String;

    .line 10
    const-string v0, "GamejoyStopRecordingResult"

    sput-object v0, Lcom/tencent/qqgamemi/event/EventID;->GAMEJOY_STOPRECORDING_RESULT:Ljava/lang/String;

    .line 11
    const-string v0, "GamejoyStartManualRecordingResult"

    sput-object v0, Lcom/tencent/qqgamemi/event/EventID;->GAMEJOY_START_MANUAL_RECORDING_RESULT:Ljava/lang/String;

    .line 12
    const-string v0, "GamejoyStartJudgementRecordingResult"

    sput-object v0, Lcom/tencent/qqgamemi/event/EventID;->GAMEJOY_START_JUDGEMENT_RECORDING_RESULT:Ljava/lang/String;

    .line 13
    const-string v0, "GamejoySDKPermissionCheckResult"

    sput-object v0, Lcom/tencent/qqgamemi/event/EventID;->GAMEJOY_SDK_PERMISSION_CHECK_RESULT:Ljava/lang/String;

    .line 14
    const-string v0, "GamejoySDKClosedJudgementNotification"

    sput-object v0, Lcom/tencent/qqgamemi/event/EventID;->GAMEJOY_SDK_CLOSED_JUDGEMENT_NOTIFICATION:Ljava/lang/String;

    .line 15
    const-string v0, "GamejoySDKForceStopJudgementNotification"

    sput-object v0, Lcom/tencent/qqgamemi/event/EventID;->GAMEJOY_SDK_FORCESTOP_JUDGEMENT_NOTIFICATION:Ljava/lang/String;

    .line 16
    const-string v0, "GamejoyShowVideoPlayerNotification"

    sput-object v0, Lcom/tencent/qqgamemi/event/EventID;->GAMEJOY_SHOW_VIDEO_PLAYER_NOTIFICATION:Ljava/lang/String;

    .line 17
    const-string v0, "GamejoyVideoShareNotification"

    sput-object v0, Lcom/tencent/qqgamemi/event/EventID;->GAMEJOY_VIDEO_SHARE_NOTIFICATION:Ljava/lang/String;

    .line 18
    const-string v0, "GamejoyStartARRecordingResult"

    sput-object v0, Lcom/tencent/qqgamemi/event/EventID;->GAMEJOY_START_AR_RECORDING_RESULT:Ljava/lang/String;

    .line 19
    const-string v0, "GamejoySDKClosedARRecordingNotification"

    sput-object v0, Lcom/tencent/qqgamemi/event/EventID;->GAMEJOY_SDK_CLOSED_AR_NOTIFICATION:Ljava/lang/String;

    .line 20
    const-string v0, "GamejoySDKForceStopARRecordingNotification"

    sput-object v0, Lcom/tencent/qqgamemi/event/EventID;->GAMEJOY_SDK_FORCESTOP_AR_NOTIFICATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
