.class Lcom/netease/pharos/link/LinkCheck$MyTimeTask;
.super Ljava/util/TimerTask;
.source "LinkCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/link/LinkCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimeTask"
.end annotation


# instance fields
.field mCount:I

.field mIndex:I

.field mIp:Ljava/lang/String;

.field mPort:I

.field mSize:I

.field mTime:I

.field mType:I

.field final synthetic this$0:Lcom/netease/pharos/link/LinkCheck;


# direct methods
.method constructor <init>(Lcom/netease/pharos/link/LinkCheck;)V
    .locals 1

    .prologue
    .line 121
    iput-object p1, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->this$0:Lcom/netease/pharos/link/LinkCheck;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->mIp:Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->mIndex:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 157
    const-string v0, "LinkCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyTimeTask checkOnce mType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget v0, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->mIndex:I

    .line 159
    iget v7, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->mIndex:I

    .line 160
    .local v7, "pCount":I
    const-string v0, "LinkCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7b2c "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6b21\u6267\u884c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->this$0:Lcom/netease/pharos/link/LinkCheck;

    iget v1, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->mType:I

    iget-object v2, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->mIp:Ljava/lang/String;

    iget v3, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->mPort:I

    iget v4, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->mCount:I

    iget v5, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->mTime:I

    iget v6, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->mSize:I

    invoke-static/range {v0 .. v6}, Lcom/netease/pharos/link/LinkCheck;->access$0(Lcom/netease/pharos/link/LinkCheck;ILjava/lang/String;IIII)I

    .line 163
    const/4 v0, 0x1

    if-le v7, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->this$0:Lcom/netease/pharos/link/LinkCheck;

    invoke-static {v0}, Lcom/netease/pharos/link/LinkCheck;->access$1(Lcom/netease/pharos/link/LinkCheck;)Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->this$0:Lcom/netease/pharos/link/LinkCheck;

    invoke-static {v0}, Lcom/netease/pharos/link/LinkCheck;->access$1(Lcom/netease/pharos/link/LinkCheck;)Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->this$0:Lcom/netease/pharos/link/LinkCheck;

    invoke-static {v1}, Lcom/netease/pharos/link/LinkCheck;->access$2(Lcom/netease/pharos/link/LinkCheck;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    .line 169
    :cond_0
    const/16 v0, 0xa

    if-ne v0, v7, :cond_1

    .line 171
    const-string v0, "LinkCheck"

    const-string v1, "\u7ed3\u675f\u5faa\u73af\u5668"

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->this$0:Lcom/netease/pharos/link/LinkCheck;

    invoke-static {v0}, Lcom/netease/pharos/link/LinkCheck;->access$3(Lcom/netease/pharos/link/LinkCheck;)Lcom/netease/pharos/link/LinkCheck$MyTimeTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->cancel()Z

    .line 174
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->this$0:Lcom/netease/pharos/link/LinkCheck;

    invoke-static {v0}, Lcom/netease/pharos/link/LinkCheck;->access$4(Lcom/netease/pharos/link/LinkCheck;)Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->this$0:Lcom/netease/pharos/link/LinkCheck;

    invoke-static {v0}, Lcom/netease/pharos/link/LinkCheck;->access$4(Lcom/netease/pharos/link/LinkCheck;)Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->this$0:Lcom/netease/pharos/link/LinkCheck;

    invoke-static {v1}, Lcom/netease/pharos/link/LinkCheck;->access$2(Lcom/netease/pharos/link/LinkCheck;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/pharos/linkcheck/CycleTaskStopListener;->callBack(Ljava/lang/String;)V

    .line 178
    :cond_1
    return-void
.end method

.method public setTime(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->mCount:I

    .line 136
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->mType:I

    .line 132
    return-void
.end method

.method public setmIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIp"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->mIp:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setmPort(I)V
    .locals 0
    .param p1, "mPort"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->mPort:I

    .line 145
    return-void
.end method

.method public setmSize(I)V
    .locals 0
    .param p1, "mSize"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->mSize:I

    .line 153
    return-void
.end method

.method public setmTime(I)V
    .locals 0
    .param p1, "mTime"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->mTime:I

    .line 149
    return-void
.end method
