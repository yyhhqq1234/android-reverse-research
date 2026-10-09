.class public Lcom/subao/common/n/c;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# static fields
.field public static final a:Ljava/util/TimeZone;

.field public static final b:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "UTC"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/n/c;->a:Ljava/util/TimeZone;

    .line 16
    new-instance v0, Ljava/util/SimpleTimeZone;

    const v1, 0x1b77400

    const-string v2, "CST"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/n/c;->b:Ljava/util/TimeZone;

    return-void
.end method

.method public static a()I
    .locals 4

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b77400

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/subao/common/n/c;->a(J)I

    move-result v0

    return v0
.end method

.method public static a(J)I
    .locals 2

    .prologue
    .line 25
    const-wide/32 v0, 0x5265c00

    div-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static a(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x2d

    const/16 v5, 0x20

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 123
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_7

    move v2, v0

    .line 124
    :goto_0
    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/subao/common/n/c;->a(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/subao/common/n/c;->a(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/subao/common/n/c;->a(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 129
    :cond_0
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_8

    .line 130
    :goto_1
    if-eqz v0, :cond_2

    .line 131
    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    :cond_1
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v3, v1}, Lcom/subao/common/n/c;->a(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v3, v1}, Lcom/subao/common/n/c;->a(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v3, v1}, Lcom/subao/common/n/c;->a(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 138
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_6

    .line 139
    if-nez v2, :cond_3

    if-eqz v0, :cond_4

    .line 140
    :cond_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    :cond_4
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    .line 143
    if-ltz v0, :cond_5

    .line 144
    const/16 v1, 0x2b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    move v2, v1

    .line 123
    goto :goto_0

    :cond_8
    move v0, v1

    .line 129
    goto :goto_1
.end method

.method private static a(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 152
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 153
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static b(J)Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 54
    return-object v0
.end method
