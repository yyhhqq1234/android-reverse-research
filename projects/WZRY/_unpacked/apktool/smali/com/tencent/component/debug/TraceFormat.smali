.class public final Lcom/tencent/component/debug/TraceFormat;
.super Ljava/lang/Object;
.source "TraceFormat.java"


# static fields
.field public static final DEFAULT:Lcom/tencent/component/debug/TraceFormat;

.field public static final STR_ASSERT:Ljava/lang/String; = "A"

.field public static final STR_DEBUG:Ljava/lang/String; = "D"

.field public static final STR_ERROR:Ljava/lang/String; = "E"

.field public static final STR_INFO:Ljava/lang/String; = "I"

.field public static final STR_UNKNOWN:Ljava/lang/String; = "-"

.field public static final STR_VERBOSE:Ljava/lang/String; = "V"

.field public static final STR_WARN:Ljava/lang/String; = "W"

.field public static final TRACE_TIME_FORMAT:Ljava/lang/String; = "%Y-%m-%d %H:%M:%S"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/tencent/component/debug/TraceFormat;

    invoke-direct {v0}, Lcom/tencent/component/debug/TraceFormat;-><init>()V

    sput-object v0, Lcom/tencent/component/debug/TraceFormat;->DEFAULT:Lcom/tencent/component/debug/TraceFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatTrace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7
    .param p1, "level"    # I
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "time"    # J
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "msg"    # Ljava/lang/String;
    .param p7, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 109
    const-wide/16 v4, 0x3e8

    rem-long v2, p3, v4

    .line 111
    .local v2, "ms":J
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 113
    .local v1, "timeObj":Landroid/text/format/Time;
    invoke-virtual {v1, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lcom/tencent/component/debug/TraceFormat;->getLevelPrefix(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v1, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    const-wide/16 v4, 0xa

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 121
    const-string v4, "00"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    :goto_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    if-nez p2, :cond_3

    .line 132
    const-string v4, "N/A"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :goto_1
    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    if-eqz p7, :cond_1

    .line 143
    const-string v4, "* Exception : \n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 123
    :cond_2
    const-wide/16 v4, 0x64

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 125
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public final getLevelPrefix(I)Ljava/lang/String;
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 63
    sparse-switch p1, :sswitch_data_0

    .line 78
    const-string v0, "-"

    :goto_0
    return-object v0

    .line 66
    :sswitch_0
    const-string v0, "D"

    goto :goto_0

    .line 68
    :sswitch_1
    const-string v0, "I"

    goto :goto_0

    .line 70
    :sswitch_2
    const-string v0, "W"

    goto :goto_0

    .line 72
    :sswitch_3
    const-string v0, "E"

    goto :goto_0

    .line 74
    :sswitch_4
    const-string v0, "V"

    goto :goto_0

    .line 76
    :sswitch_5
    const-string v0, "A"

    goto :goto_0

    .line 63
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_5
    .end sparse-switch
.end method
