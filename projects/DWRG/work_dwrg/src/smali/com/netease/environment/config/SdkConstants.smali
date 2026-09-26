.class public Lcom/netease/environment/config/SdkConstants;
.super Ljava/lang/Object;
.source "SdkConstants.java"


# static fields
.field public static final AN_HOUR:J = 0x36ee80L

.field public static final A_MUNITE:J = 0xea60L

.field public static final A_SECOND:J = 0x3e8L

.field public static final ID_REGULAR_NONE:Ljava/lang/String; = "-1"

.field public static final JSON_KEY_ENABLE:Ljava/lang/String; = "enable"

.field public static final JSON_KEY_INTERCEPT:Ljava/lang/String; = "intercept"

.field public static final JSON_KEY_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final JSON_KEY_REGEX:Ljava/lang/String; = "regex"

.field public static final JSON_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field public static final JSON_KEY_SHIELD:Ljava/lang/String; = "shield"

.field public static final JSON_KEY_TASK_TIMEOUT:Ljava/lang/String; = "taskTimeout"

.field public static final JSON_KEY_UPDATE_INTERVAL:Ljava/lang/String; = "updateInterval"

.field public static final LIMIT_LOG_LENGTH:I = 0x19000

.field public static final MODE_FAST:Ljava/lang/String; = "fast"

.field public static final MODE_NORMAL:Ljava/lang/String; = "normal"

.field public static final PRE_CHANNEL:Ljava/lang/String; = "channel="

.field public static final PRE_CONTENT:Ljava/lang/String; = "content="

.field public static final PRE_LEVEL:Ljava/lang/String; = "level="

.field public static final RESULT_CODE_ERROR:I = 0x64

.field public static final RESULT_CODE_INTERCEPT:I = 0xc9

.field public static final RESULT_CODE_PASS:I = 0xc8

.field public static final RESULT_CODE_SHIELD:I = 0xca

.field public static final RESULT_MESSAGE_CONTEXT_NULL:Ljava/lang/String; = "context is null"

.field public static final RESULT_MESSAGE_EMPTY:Ljava/lang/String; = "param is null or empty"

.field public static final RESULT_MESSAGE_ERROR:Ljava/lang/String; = "error"

.field public static final RESULT_MESSAGE_EXCEPTION:Ljava/lang/String; = "exception"

.field public static final RESULT_MESSAGE_FILE_FAIL:Ljava/lang/String; = "fail to get the file"

.field public static final RESULT_MESSAGE_INTERCEPT:Ljava/lang/String; = "intercept"

.field public static final RESULT_MESSAGE_PASS:Ljava/lang/String; = "pass"

.field public static final RESULT_MESSAGE_SHIELD:Ljava/lang/String; = "shield"

.field public static final RESULT_MESSAGE_TIMEOUT:Ljava/lang/String; = "time out"

.field public static final SYSTEM:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String;

.field public static final TIMEOUT_PER_REGULAR:J = 0x3e8L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/netease/environment/config/SdkConstants;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/environment/config/SdkConstants;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/initbox_android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getIfTest()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "test.html"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, ".html"

    goto :goto_0
.end method
