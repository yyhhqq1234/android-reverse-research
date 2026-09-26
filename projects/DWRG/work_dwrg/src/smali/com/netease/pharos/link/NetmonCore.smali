.class public Lcom/netease/pharos/link/NetmonCore;
.super Ljava/lang/Object;
.source "NetmonCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetmonProxy"

.field public static mNetmonReportMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/netease/pharos/report/NetmonReport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

.field private mCount:I

.field private mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

.field private mExtra:Ljava/lang/String;

.field private mInterval:I

.field private mIp:Ljava/lang/String;

.field private mListener:Lcom/netease/pharos/link/LinkCheckListener;

.field private mPort:I

.field private mRegion:Ljava/lang/String;

.field private mSize:I

.field private mTime:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/pharos/link/NetmonCore;->mNetmonReportMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/netease/pharos/link/NetmonCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    .line 30
    iput-object v0, p0, Lcom/netease/pharos/link/NetmonCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    .line 32
    iput-object v0, p0, Lcom/netease/pharos/link/NetmonCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/pharos/link/NetmonCore;->mInterval:I

    .line 24
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 166
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    iget v1, p0, Lcom/netease/pharos/link/NetmonCore;->mType:I

    iget-object v2, p0, Lcom/netease/pharos/link/NetmonCore;->mIp:Ljava/lang/String;

    iget v3, p0, Lcom/netease/pharos/link/NetmonCore;->mPort:I

    iget v4, p0, Lcom/netease/pharos/link/NetmonCore;->mCount:I

    iget v5, p0, Lcom/netease/pharos/link/NetmonCore;->mTime:I

    iget v6, p0, Lcom/netease/pharos/link/NetmonCore;->mSize:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/netease/pharos/link/NetmonCore;->check(ILjava/lang/String;IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/netease/pharos/link/NetmonCore;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public check(ILjava/lang/String;IIII)I
    .locals 9
    .param p1, "type"    # I
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "count"    # I
    .param p5, "time"    # I
    .param p6, "size"    # I

    .prologue
    .line 109
    const-string v1, "NetmonProxy"

    const-string v2, "NetmonCore check"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/16 v8, 0xb

    .line 112
    .local v8, "result":I
    new-instance v7, Lcom/netease/pharos/report/NetmonReport;

    invoke-direct {v7}, Lcom/netease/pharos/report/NetmonReport;-><init>()V

    .line 113
    .local v7, "netmonReport":Lcom/netease/pharos/report/NetmonReport;
    int-to-long v1, p4

    invoke-virtual {v7, v1, v2}, Lcom/netease/pharos/report/NetmonReport;->setPacketCount(J)V

    .line 114
    sget-object v1, Lcom/netease/pharos/link/NetmonCore;->mNetmonReportMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v0, Lcom/netease/pharos/link/LinkCheck;

    invoke-direct {v0}, Lcom/netease/pharos/link/LinkCheck;-><init>()V

    .line 117
    .local v0, "linkCheck":Lcom/netease/pharos/link/LinkCheck;
    iget-object v1, p0, Lcom/netease/pharos/link/NetmonCore;->mRegion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/netease/pharos/link/NetmonCore;->mRegion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/pharos/link/LinkCheck;->setRegion(Ljava/lang/String;)V

    .line 121
    :cond_0
    const/4 v1, -0x1

    iget v2, p0, Lcom/netease/pharos/link/NetmonCore;->mInterval:I

    if-eq v1, v2, :cond_1

    .line 122
    iget v1, p0, Lcom/netease/pharos/link/NetmonCore;->mInterval:I

    invoke-virtual {v0, v1}, Lcom/netease/pharos/link/LinkCheck;->setInterval(I)V

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/netease/pharos/link/NetmonCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/netease/pharos/link/NetmonCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    invoke-virtual {v0, v1}, Lcom/netease/pharos/link/LinkCheck;->setmListener(Lcom/netease/pharos/link/LinkCheckListener;)V

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/netease/pharos/link/NetmonCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    if-eqz v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/netease/pharos/link/NetmonCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    invoke-virtual {v0, v1}, Lcom/netease/pharos/link/LinkCheck;->setmCycleTaskStopListener(Lcom/netease/pharos/linkcheck/CycleTaskStopListener;)V

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/netease/pharos/link/NetmonCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    if-eqz v1, :cond_4

    .line 134
    iget-object v1, p0, Lcom/netease/pharos/link/NetmonCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    invoke-virtual {v0, v1}, Lcom/netease/pharos/link/LinkCheck;->setmCheckOverNotifyListener(Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;)V

    .line 137
    :cond_4
    iget-object v1, p0, Lcom/netease/pharos/link/NetmonCore;->mExtra:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 138
    iget-object v1, p0, Lcom/netease/pharos/link/NetmonCore;->mExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/pharos/link/LinkCheck;->setmExtra(Ljava/lang/String;)V

    :cond_5
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 141
    invoke-virtual/range {v0 .. v6}, Lcom/netease/pharos/link/LinkCheck;->check(ILjava/lang/String;IIII)I

    move-result v8

    .line 143
    return v8
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netease/pharos/link/NetmonCore;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getmCheckOverNotifyListener()Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netease/pharos/link/NetmonCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    return-object v0
.end method

.method public getmCycleTaskStopListener()Lcom/netease/pharos/linkcheck/CycleTaskStopListener;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netease/pharos/link/NetmonCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    return-object v0
.end method

.method public getmExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netease/pharos/link/NetmonCore;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getmInterval()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/netease/pharos/link/NetmonCore;->mInterval:I

    return v0
.end method

.method public getmListener()Lcom/netease/pharos/link/LinkCheckListener;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netease/pharos/link/NetmonCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    return-object v0
.end method

.method public init(ILjava/lang/String;IIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "count"    # I
    .param p5, "time"    # I
    .param p6, "size"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/netease/pharos/link/NetmonCore;->mType:I

    .line 48
    iput-object p2, p0, Lcom/netease/pharos/link/NetmonCore;->mIp:Ljava/lang/String;

    .line 49
    iput p3, p0, Lcom/netease/pharos/link/NetmonCore;->mPort:I

    .line 50
    iput p4, p0, Lcom/netease/pharos/link/NetmonCore;->mCount:I

    .line 51
    iput p5, p0, Lcom/netease/pharos/link/NetmonCore;->mTime:I

    .line 52
    iput p6, p0, Lcom/netease/pharos/link/NetmonCore;->mSize:I

    .line 53
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/netease/pharos/link/NetmonCore;->mRegion:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setmCheckOverNotifyListener(Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;)V
    .locals 0
    .param p1, "mCheckOverNotifyListener"    # Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/netease/pharos/link/NetmonCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    .line 105
    return-void
.end method

.method public setmCycleTaskStopListener(Lcom/netease/pharos/linkcheck/CycleTaskStopListener;)V
    .locals 0
    .param p1, "mCycleTaskStopListener"    # Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/netease/pharos/link/NetmonCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    .line 95
    return-void
.end method

.method public setmExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "mExtra"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/netease/pharos/link/NetmonCore;->mExtra:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setmInterval(I)V
    .locals 0
    .param p1, "mInterval"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/netease/pharos/link/NetmonCore;->mInterval:I

    .line 79
    return-void
.end method

.method public setmListener(Lcom/netease/pharos/link/LinkCheckListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/netease/pharos/link/LinkCheckListener;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/netease/pharos/link/NetmonCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 156
    .local v0, "result":Ljava/lang/StringBuffer;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    const-string v1, "mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/netease/pharos/link/NetmonCore;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    const-string v1, "mIp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/link/NetmonCore;->mIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
