.class public Lcom/netease/inner/pushclient/NativePushData;
.super Ljava/lang/Object;
.source "NativePushData.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ONCE:I = 0x0

.field public static final REPEAT_MONTH:I = 0x2

.field public static final REPEAT_MONTH_BACKWARDS:I = 0x3

.field public static final REPEAT_WEEK:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private delayTriggerSec:I

.field private mDay:I

.field private mHour:I

.field private mMinute:I

.field private mMode:I

.field private mMonth:I

.field private mNotifyMessage:Lcom/netease/push/utils/NotifyMessage;

.field private mPushID:I

.field private mPushName:Ljava/lang/String;

.field private mRepeatMode:I

.field private mSecond:I

.field private mTimeZone:Ljava/lang/String;

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-class v0, Lcom/netease/inner/pushclient/NativePushData;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/netease/inner/pushclient/NativePushData;->$assertionsDisabled:Z

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NGPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netease/inner/pushclient/NativePushData;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    .line 87
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pushName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/netease/push/utils/NotifyMessage;

    invoke-direct {v0}, Lcom/netease/push/utils/NotifyMessage;-><init>()V

    iput-object v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mNotifyMessage:Lcom/netease/push/utils/NotifyMessage;

    .line 63
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    .line 64
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    .line 65
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mTimeZone:Ljava/lang/String;

    .line 78
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->delayTriggerSec:I

    .line 90
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    .line 97
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    .line 100
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mYear:I

    .line 101
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMonth:I

    .line 102
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mDay:I

    .line 104
    const-string v0, "default"

    iput-object v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    .line 110
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushID:I

    .line 113
    invoke-virtual {p0}, Lcom/netease/inner/pushclient/NativePushData;->clear()V

    .line 114
    iput-object p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    .line 115
    return-void
.end method

.method private getRepeatNextTime(Ljava/util/Calendar;II)J
    .locals 12
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "field"    # I
    .param p3, "pattern"    # I

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    .line 268
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 269
    .local v2, "selectTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v1, p0, Lcom/netease/inner/pushclient/NativePushData;->delayTriggerSec:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v8, v1

    add-long v4, v6, v8

    .line 270
    .local v4, "systemTime":J
    iget v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    const/4 v6, 0x3

    if-ne v1, v6, :cond_2

    .line 271
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 272
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 271
    invoke-direct {v0, v1, v6, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 275
    .local v0, "gcar":Ljava/util/Calendar;
    :goto_0
    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 276
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int/2addr v1, v6

    shl-int v1, v10, v1

    and-int/2addr v1, p3

    if-eqz v1, :cond_0

    .line 290
    .end local v0    # "gcar":Ljava/util/Calendar;
    :goto_1
    sget-object v1, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getRepeatNextTime select:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dalayTriggerSec:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/netease/inner/pushclient/NativePushData;->delayTriggerSec:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " current:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-wide v2

    .line 277
    .restart local v0    # "gcar":Ljava/util/Calendar;
    :cond_0
    invoke-virtual {p1, v11, v10}, Ljava/util/Calendar;->add(II)V

    .line 278
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 279
    invoke-virtual {v0, v11, v10}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 284
    .end local v0    # "gcar":Ljava/util/Calendar;
    :cond_1
    invoke-virtual {p1, v11, v10}, Ljava/util/Calendar;->add(II)V

    .line 286
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 282
    :cond_2
    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 283
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    shl-int v1, v10, v1

    and-int/2addr v1, p3

    if-eqz v1, :cond_1

    goto :goto_1
.end method

.method private getTriggerAtMillis()J
    .locals 18

    .prologue
    .line 222
    const-wide/16 v4, 0x0

    .line 223
    .local v4, "firstTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 224
    .local v8, "systemTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 225
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 226
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netease/inner/pushclient/NativePushData;->mTimeZone:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 227
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netease/inner/pushclient/NativePushData;->mTimeZone:Ljava/lang/String;

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 231
    :goto_0
    const/16 v10, 0xb

    move-object/from16 v0, p0

    iget v11, v0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    invoke-virtual {v2, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 232
    const/16 v10, 0xc

    move-object/from16 v0, p0

    iget v11, v0, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    invoke-virtual {v2, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 233
    const/16 v10, 0xd

    move-object/from16 v0, p0

    iget v11, v0, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    invoke-virtual {v2, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 234
    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 236
    const-wide/16 v6, 0x0

    .line 237
    .local v6, "selectTime":J
    move-object/from16 v0, p0

    iget v10, v0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    if-nez v10, :cond_2

    .line 238
    move-object/from16 v0, p0

    iget v10, v0, Lcom/netease/inner/pushclient/NativePushData;->mYear:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/netease/inner/pushclient/NativePushData;->mMonth:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/netease/inner/pushclient/NativePushData;->mDay:I

    invoke-virtual {v2, v10, v11, v12}, Ljava/util/Calendar;->set(III)V

    .line 239
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 259
    :cond_0
    :goto_1
    sget-object v10, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    const-string v11, "%s next trigger time:%s, after %d sec"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    sub-long v14, v6, v8

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    cmp-long v10, v6, v8

    if-gez v10, :cond_8

    .line 261
    const-wide/16 v10, 0x0

    .line 263
    :goto_2
    return-wide v10

    .line 229
    .end local v6    # "selectTime":J
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 240
    .restart local v6    # "selectTime":J
    :cond_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 241
    move-object/from16 v0, p0

    iget v10, v0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    if-nez v10, :cond_3

    .line 242
    const-wide/16 v10, 0x0

    goto :goto_2

    .line 246
    :cond_3
    const/4 v3, 0x0

    .line 247
    .local v3, "mode":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_4

    .line 248
    const/4 v3, 0x1

    .line 250
    :cond_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    shl-int/lit8 v10, v10, 0x1

    or-int/2addr v10, v3

    and-int/lit8 v3, v10, 0x7f

    .line 252
    const/4 v10, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10, v3}, Lcom/netease/inner/pushclient/NativePushData;->getRepeatNextTime(Ljava/util/Calendar;II)J

    move-result-wide v6

    .line 253
    goto :goto_1

    .end local v3    # "mode":I
    :cond_5
    move-object/from16 v0, p0

    iget v10, v0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_0

    .line 254
    :cond_6
    move-object/from16 v0, p0

    iget v10, v0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    if-nez v10, :cond_7

    .line 255
    const-wide/16 v10, 0x0

    goto :goto_2

    .line 257
    :cond_7
    const/4 v10, 0x5

    move-object/from16 v0, p0

    iget v11, v0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10, v11}, Lcom/netease/inner/pushclient/NativePushData;->getRepeatNextTime(Ljava/util/Calendar;II)J

    move-result-wide v6

    goto/16 :goto_1

    .line 263
    :cond_8
    add-long v10, v4, v6

    sub-long/2addr v10, v8

    goto :goto_2
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public static readFromJsonString(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/inner/pushclient/NativePushData;
    .locals 5
    .param p0, "pushName"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 356
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 358
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v3, Lcom/netease/inner/pushclient/NativePushData;

    invoke-direct {v3, p0}, Lcom/netease/inner/pushclient/NativePushData;-><init>(Ljava/lang/String;)V

    .line 359
    .local v3, "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    const-string v4, "notify"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "messageData":Ljava/lang/String;
    invoke-static {v2}, Lcom/netease/push/utils/NotifyMessage;->readFromJsonString(Ljava/lang/String;)Lcom/netease/push/utils/NotifyMessage;

    move-result-object v4

    iput-object v4, v3, Lcom/netease/inner/pushclient/NativePushData;->mNotifyMessage:Lcom/netease/push/utils/NotifyMessage;

    .line 362
    const-string v4, "repeat"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    .line 363
    const-string v4, "mode"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    .line 364
    const-string v4, "hour"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    .line 365
    const-string v4, "min"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    .line 367
    :try_start_0
    const-string v4, "sec"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    const-string v4, "pushid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/netease/inner/pushclient/NativePushData;->mPushID:I

    .line 372
    const-string v4, "year"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/netease/inner/pushclient/NativePushData;->mYear:I

    .line 373
    const-string v4, "month"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/netease/inner/pushclient/NativePushData;->mMonth:I

    .line 374
    const-string v4, "day"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/netease/inner/pushclient/NativePushData;->mDay:I

    .line 376
    return-object v3

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    iput v4, v3, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mNotifyMessage:Lcom/netease/push/utils/NotifyMessage;

    invoke-virtual {v0}, Lcom/netease/push/utils/NotifyMessage;->clear()V

    .line 119
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    .line 120
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    .line 121
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    .line 122
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    .line 123
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mYear:I

    .line 124
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMonth:I

    .line 125
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mDay:I

    .line 126
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    .line 127
    const-string v0, "default"

    iput-object v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    .line 128
    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushID:I

    .line 129
    return-void
.end method

.method public createPushID(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "push":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushID:I

    .line 206
    return-void
.end method

.method public getNativeNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-static {}, Lcom/netease/inner/pushclient/PushClientReceiver;->createMethodIntent()Landroid/content/Intent;

    move-result-object v0

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v1, "pushname"

    iget-object v2, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v1, "method"

    const-string v2, "nativenotify"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    return-object v0
.end method

.method public getNotifyMessage()Lcom/netease/push/utils/NotifyMessage;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mNotifyMessage:Lcom/netease/push/utils/NotifyMessage;

    return-object v0
.end method

.method public getPushName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    return v0
.end method

.method public setDelayTriggerSec(I)V
    .locals 3
    .param p1, "t"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->delayTriggerSec:I

    .line 81
    sget-object v0, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delay trigger second:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "ext"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mNotifyMessage:Lcom/netease/push/utils/NotifyMessage;

    iput-object p1, v0, Lcom/netease/push/utils/NotifyMessage;->mTitle:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mNotifyMessage:Lcom/netease/push/utils/NotifyMessage;

    iput-object p2, v0, Lcom/netease/push/utils/NotifyMessage;->mMsg:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mNotifyMessage:Lcom/netease/push/utils/NotifyMessage;

    iput-object p3, v0, Lcom/netease/push/utils/NotifyMessage;->mExt:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setMonthRepeat(I)V
    .locals 1
    .param p1, "monthMode"    # I

    .prologue
    .line 170
    const/4 v0, 0x2

    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    .line 171
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    .line 172
    return-void
.end method

.method public setMonthRepeatBackwards(I)V
    .locals 1
    .param p1, "monthMode"    # I

    .prologue
    .line 175
    const/4 v0, 0x3

    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    .line 176
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    .line 177
    return-void
.end method

.method public setOnce(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    .line 181
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mYear:I

    .line 182
    iput p2, p0, Lcom/netease/inner/pushclient/NativePushData;->mMonth:I

    .line 183
    iput p3, p0, Lcom/netease/inner/pushclient/NativePushData;->mDay:I

    .line 184
    return-void
.end method

.method public setOnceUnixtime(J)V
    .locals 5
    .param p1, "ut"    # J

    .prologue
    .line 187
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 188
    .local v0, "c":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 189
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mTimeZone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mTimeZone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 194
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mYear:I

    .line 195
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMonth:I

    .line 196
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mDay:I

    .line 197
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    .line 198
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    .line 199
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    .line 200
    const/4 v1, 0x0

    iput v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    .line 201
    return-void

    .line 192
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method public setTime(II)V
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    .line 139
    iput p2, p0, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    .line 141
    return-void
.end method

.method public setTime(III)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    .line 145
    iput p2, p0, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    .line 146
    iput p3, p0, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    .line 147
    return-void
.end method

.method public setTime(IIILjava/lang/String;)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "tz"    # Ljava/lang/String;

    .prologue
    .line 157
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    .line 158
    iput p2, p0, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    .line 159
    iput p3, p0, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    .line 160
    iput-object p4, p0, Lcom/netease/inner/pushclient/NativePushData;->mTimeZone:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setTime(IILjava/lang/String;)V
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "tz"    # Ljava/lang/String;

    .prologue
    .line 150
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    .line 151
    iput p2, p0, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    .line 153
    iput-object p3, p0, Lcom/netease/inner/pushclient/NativePushData;->mTimeZone:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setWeekRepeat(I)V
    .locals 1
    .param p1, "weekMode"    # I

    .prologue
    .line 164
    sget-boolean v0, Lcom/netease/inner/pushclient/NativePushData;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    const/16 v0, 0x7f

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 165
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    .line 166
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    .line 167
    return-void
.end method

.method public startAlarm(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netease/inner/pushclient/NativePushData;->getNativeNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 296
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p1, v0}, Lcom/netease/inner/pushclient/NativePushData;->startAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    .line 297
    return-void
.end method

.method public startAlarm(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 306
    sget-object v4, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startAlarm mPushName="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget v4, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushID:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p1, v4, p2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 310
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 311
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-direct {p0}, Lcom/netease/inner/pushclient/NativePushData;->getTriggerAtMillis()J

    move-result-wide v2

    .line 312
    .local v2, "triggerAtMillis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 314
    sget-object v4, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " triggerAtmillis:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0

    .line 317
    invoke-virtual {v0, v7, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 325
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-virtual {v0, v7, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 322
    :cond_1
    sget-object v4, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    const-string v5, "triggerAtmillis timeout"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v4, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/netease/push/utils/PushSetting;->rmNativePushName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-virtual {p0, p2}, Lcom/netease/inner/pushclient/NativePushData;->getNativeNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 301
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p1, v0}, Lcom/netease/inner/pushclient/NativePushData;->startAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    .line 302
    return-void
.end method

.method public stopAlarm(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 328
    sget-object v3, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "stopAlarm mPushName="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/netease/inner/pushclient/NativePushData;->getNativeNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 330
    .local v1, "intent":Landroid/content/Intent;
    iget v3, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushID:I

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 331
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 332
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 333
    return-void
.end method

.method public writeToJsonString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 339
    .local v0, "jsonObject":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/netease/inner/pushclient/NativePushData;->mNotifyMessage:Lcom/netease/push/utils/NotifyMessage;

    invoke-virtual {v2}, Lcom/netease/push/utils/NotifyMessage;->writeToJsonString()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "sMessage":Ljava/lang/String;
    const-string v2, "notify"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    const-string v2, "repeat"

    iget v3, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 342
    const-string v2, "mode"

    iget v3, p0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 343
    const-string v2, "year"

    iget v3, p0, Lcom/netease/inner/pushclient/NativePushData;->mYear:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 344
    const-string v2, "month"

    iget v3, p0, Lcom/netease/inner/pushclient/NativePushData;->mMonth:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 345
    const-string v2, "day"

    iget v3, p0, Lcom/netease/inner/pushclient/NativePushData;->mDay:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 346
    const-string v2, "hour"

    iget v3, p0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 347
    const-string v2, "min"

    iget v3, p0, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 348
    const-string v2, "sec"

    iget v3, p0, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    const-string v2, "pushid"

    iget v3, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushID:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 351
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
