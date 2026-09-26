.class public Lcom/netease/pushclient/NativePushManager;
.super Ljava/lang/Object;
.source "NativePushManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NGPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netease/pushclient/NativePushManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllAlarms()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/inner/pushclient/NativePushManager;->getAllAlarms()[Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sput-object p0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    .line 36
    sget-object v0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/inner/pushclient/NativePushManager;->init(Landroid/content/Context;)V

    .line 39
    :cond_0
    return-void
.end method

.method public static newAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "alarmID"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "ext"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/netease/inner/pushclient/NativePushManager;->newAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/netease/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public static removeAlarm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "alarmID"    # Ljava/lang/String;

    .prologue
    .line 140
    sget-object v0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/inner/pushclient/NativePushManager;->removeAlarm(Ljava/lang/String;)Z

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeAllAlarms()Z
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/inner/pushclient/NativePushManager;->removeAllAlarms()Z

    move-result v0

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAlarmTime(Ljava/lang/String;II)Z
    .locals 1
    .param p0, "alarmID"    # Ljava/lang/String;
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 49
    sget-object v0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/netease/inner/pushclient/NativePushManager;->setAlarmTime(Ljava/lang/String;II)Z

    move-result v0

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAlarmTime(Ljava/lang/String;IIILjava/lang/String;)Z
    .locals 6
    .param p0, "alarmID"    # Ljava/lang/String;
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "tz"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netease/inner/pushclient/NativePushManager;->setAlarmTime(Ljava/lang/String;IIILjava/lang/String;)Z

    move-result v0

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAlarmTime(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1
    .param p0, "alarmID"    # Ljava/lang/String;
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "tz"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/netease/inner/pushclient/NativePushManager;->setAlarmTime(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setMonthRepeat(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "alarmID"    # Ljava/lang/String;
    .param p1, "monthMode"    # I

    .prologue
    .line 77
    sget-object v0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netease/inner/pushclient/NativePushManager;->setMonthRepeat(Ljava/lang/String;I)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setMonthRepeatBackwards(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "alarmID"    # Ljava/lang/String;
    .param p1, "monthMode"    # I

    .prologue
    .line 84
    sget-object v0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netease/inner/pushclient/NativePushManager;->setMonthRepeatBackwards(Ljava/lang/String;I)Z

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setOnce(Ljava/lang/String;III)Z
    .locals 1
    .param p0, "alarmID"    # Ljava/lang/String;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 91
    sget-object v0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/netease/inner/pushclient/NativePushManager;->setOnce(Ljava/lang/String;III)Z

    move-result v0

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setOnceLater(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "alarmID"    # Ljava/lang/String;
    .param p1, "delaySecond"    # I

    .prologue
    .line 105
    sget-object v0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    int-to-long v4, p1

    add-long/2addr v2, v4

    .line 106
    invoke-virtual {v0, p0, v2, v3}, Lcom/netease/inner/pushclient/NativePushManager;->setOnceUnixtime(Ljava/lang/String;J)Z

    move-result v0

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setOnceUnixtime(Ljava/lang/String;J)Z
    .locals 1
    .param p0, "alarmID"    # Ljava/lang/String;
    .param p1, "ut"    # J

    .prologue
    .line 98
    sget-object v0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/netease/inner/pushclient/NativePushManager;->setOnceUnixtime(Ljava/lang/String;J)Z

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setWeekRepeat(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "alarmID"    # Ljava/lang/String;
    .param p1, "weekMode"    # I

    .prologue
    .line 70
    sget-object v0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netease/inner/pushclient/NativePushManager;->setWeekRepeat(Ljava/lang/String;I)Z

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startAlarm(Lcom/netease/inner/pushclient/NativePushData;)Z
    .locals 1
    .param p0, "nativePushData"    # Lcom/netease/inner/pushclient/NativePushData;

    .prologue
    .line 120
    sget-object v0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/inner/pushclient/NativePushManager;->startAlarm(Lcom/netease/inner/pushclient/NativePushData;)Z

    move-result v0

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startAlarm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "alarmID"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-object v0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/inner/pushclient/NativePushManager;->startAlarm(Ljava/lang/String;)Z

    move-result v0

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stopPush(Ljava/lang/String;)Z
    .locals 1
    .param p0, "alarmID"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v0, Lcom/netease/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/inner/pushclient/NativePushManager;->stopPush(Ljava/lang/String;)Z

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
