.class public Lcom/tencent/liteav/basic/module/TXCStatus;
.super Ljava/lang/Object;
.source "TXCStatus.java"


# direct methods
.method public static a(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 152
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 172
    :sswitch_0
    invoke-static {p0, p1}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusGetDoubleValue(Ljava/lang/String;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 167
    :sswitch_1
    invoke-static {p0, p1}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusGetIntValue(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 195
    :sswitch_2
    invoke-static {p0, p1}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusGetIntValue(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 202
    :sswitch_3
    invoke-static {p0, p1}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusGetStrValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 153
    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x7d1 -> :sswitch_1
        0x7d2 -> :sswitch_1
        0x7d3 -> :sswitch_1
        0x7d4 -> :sswitch_1
        0x7d5 -> :sswitch_1
        0x7d6 -> :sswitch_1
        0xfa1 -> :sswitch_0
        0xfa2 -> :sswitch_1
        0xfa3 -> :sswitch_1
        0x1389 -> :sswitch_0
        0x1771 -> :sswitch_1
        0x1772 -> :sswitch_0
        0x1773 -> :sswitch_1
        0x1774 -> :sswitch_1
        0x1775 -> :sswitch_1
        0x1776 -> :sswitch_1
        0x1b59 -> :sswitch_2
        0x1b5a -> :sswitch_2
        0x1b5b -> :sswitch_2
        0x1b5c -> :sswitch_2
        0x1b5d -> :sswitch_2
        0x1b5e -> :sswitch_2
        0x1b5f -> :sswitch_2
        0x1b60 -> :sswitch_2
        0x1b61 -> :sswitch_2
        0x1b62 -> :sswitch_2
        0x1b63 -> :sswitch_2
        0x1b64 -> :sswitch_3
        0x1b65 -> :sswitch_2
        0x1bbd -> :sswitch_2
        0x1bbe -> :sswitch_2
        0x1bbf -> :sswitch_2
        0x1bc0 -> :sswitch_2
        0x1bc1 -> :sswitch_2
        0x1bc2 -> :sswitch_3
        0x1bc3 -> :sswitch_2
        0x1bc4 -> :sswitch_2
        0x1bc5 -> :sswitch_2
        0x1bc6 -> :sswitch_3
        0x1bc7 -> :sswitch_2
        0x1bc8 -> :sswitch_3
        0x1bc9 -> :sswitch_3
        0x1bca -> :sswitch_3
        0x1bcb -> :sswitch_2
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-static {p0}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusStartRecord(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 77
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    if-eqz p2, :cond_0

    .line 79
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 102
    :sswitch_0
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 103
    check-cast p2, Ljava/lang/Double;

    .line 104
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusSetDoubleValue(Ljava/lang/String;ID)Z

    move-result v0

    goto :goto_0

    .line 93
    :sswitch_1
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 94
    check-cast p2, Ljava/lang/Long;

    .line 95
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusSetIntValue(Ljava/lang/String;IJ)Z

    move-result v0

    goto :goto_0

    .line 129
    :sswitch_2
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 130
    check-cast p2, Ljava/lang/Long;

    .line 131
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusSetIntValue(Ljava/lang/String;IJ)Z

    move-result v0

    goto :goto_0

    .line 140
    :sswitch_3
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 141
    check-cast p2, Ljava/lang/String;

    .line 142
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusSetStrValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 79
    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x7d1 -> :sswitch_1
        0x7d2 -> :sswitch_1
        0x7d3 -> :sswitch_1
        0x7d4 -> :sswitch_1
        0x7d5 -> :sswitch_1
        0x7d6 -> :sswitch_1
        0xfa1 -> :sswitch_0
        0xfa2 -> :sswitch_1
        0xfa3 -> :sswitch_1
        0x1389 -> :sswitch_0
        0x1771 -> :sswitch_1
        0x1772 -> :sswitch_0
        0x1773 -> :sswitch_1
        0x1774 -> :sswitch_1
        0x1775 -> :sswitch_1
        0x1776 -> :sswitch_1
        0x1b59 -> :sswitch_2
        0x1b5a -> :sswitch_2
        0x1b5b -> :sswitch_2
        0x1b5c -> :sswitch_2
        0x1b5d -> :sswitch_2
        0x1b5e -> :sswitch_2
        0x1b5f -> :sswitch_2
        0x1b60 -> :sswitch_2
        0x1b61 -> :sswitch_2
        0x1b62 -> :sswitch_2
        0x1b63 -> :sswitch_2
        0x1b64 -> :sswitch_3
        0x1b65 -> :sswitch_2
        0x1bbd -> :sswitch_2
        0x1bbe -> :sswitch_2
        0x1bbf -> :sswitch_2
        0x1bc0 -> :sswitch_2
        0x1bc1 -> :sswitch_2
        0x1bc2 -> :sswitch_3
        0x1bc3 -> :sswitch_2
        0x1bc4 -> :sswitch_2
        0x1bc5 -> :sswitch_2
        0x1bc6 -> :sswitch_3
        0x1bc7 -> :sswitch_2
        0x1bc8 -> :sswitch_3
        0x1bc9 -> :sswitch_3
        0x1bca -> :sswitch_3
        0x1bcb -> :sswitch_2
    .end sparse-switch
.end method

.method public static b(Ljava/lang/String;I)J
    .locals 4

    .prologue
    .line 210
    const-wide/16 v2, 0x0

    .line 211
    invoke-static {p0, p1}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 213
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 215
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    invoke-static {p0}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusStopRecord(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    const-string v1, ""

    .line 220
    invoke-static {p0, p1}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 222
    check-cast v0, Ljava/lang/String;

    .line 224
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 229
    invoke-static {p0, p1}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 231
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 233
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;I)D
    .locals 4

    .prologue
    .line 237
    const-wide/16 v2, 0x0

    .line 238
    invoke-static {p0, p1}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 240
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 242
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private static native nativeStatusGetDoubleValue(Ljava/lang/String;I)D
.end method

.method private static native nativeStatusGetIntValue(Ljava/lang/String;I)J
.end method

.method private static native nativeStatusGetStrValue(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private static native nativeStatusSetDoubleValue(Ljava/lang/String;ID)Z
.end method

.method private static native nativeStatusSetIntValue(Ljava/lang/String;IJ)Z
.end method

.method private static native nativeStatusSetStrValue(Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method private static native nativeStatusStartRecord(Ljava/lang/String;)V
.end method

.method private static native nativeStatusStopRecord(Ljava/lang/String;)V
.end method
