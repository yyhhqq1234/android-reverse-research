.class public Lcom/netease/cloud/nos/android/core/AcceleratorConf;
.super Ljava/lang/Object;
.source "AcceleratorConf.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private charset:Ljava/lang/String;

.field private chunkRetryCount:I

.field private chunkSize:I

.field private connectionTimeout:I

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private isPipelineEnabled:Z

.field private lbsConnectionTimeout:I

.field private lbsHost:Ljava/lang/String;

.field private lbsIP:Ljava/lang/String;

.field private lbsSoTimeout:I

.field private md5FileMaxSize:I

.field private monitorHost:Ljava/lang/String;

.field private monitorInterval:J

.field private monitorThreadEnable:Z

.field private pipelineFailoverPeriod:J

.field private queryRetryCount:I

.field private refreshInterval:J

.field private soTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/16 v1, 0x2710

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "http://wanproxy.127.net/lbs;http://wanproxy-hz.127.net/lbs;http://wanproxy-bj.127.net/lbs;http://wanproxy-oversea.127.net/lbs"

    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsHost:Ljava/lang/String;

    .line 16
    const-string v0, "http://223.252.196.38/lbs"

    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsIP:Ljava/lang/String;

    .line 17
    const-string v0, "http://wanproxy.127.net"

    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->monitorHost:Ljava/lang/String;

    .line 18
    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->charset:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->connectionTimeout:I

    .line 21
    const/16 v0, 0x7530

    iput v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->soTimeout:I

    .line 22
    iput v1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsConnectionTimeout:I

    .line 23
    iput v1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsSoTimeout:I

    .line 24
    const v0, 0x8000

    iput v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->chunkSize:I

    .line 25
    iput v2, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->chunkRetryCount:I

    .line 26
    iput v2, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->queryRetryCount:I

    .line 27
    const-wide/32 v0, 0x6ddd00

    iput-wide v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->refreshInterval:J

    .line 28
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->monitorInterval:J

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->isPipelineEnabled:Z

    .line 30
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->pipelineFailoverPeriod:J

    .line 31
    const/high16 v0, 0x100000

    iput v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->md5FileMaxSize:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->monitorThreadEnable:Z

    .line 11
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getChunkRetryCount()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->chunkRetryCount:I

    return v0
.end method

.method public getChunkSize()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->chunkSize:I

    return v0
.end method

.method public getConnectionTimeout()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->connectionTimeout:I

    return v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public getLbsConnectionTimeout()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsConnectionTimeout:I

    return v0
.end method

.method public getLbsHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsHost:Ljava/lang/String;

    return-object v0
.end method

.method public getLbsIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsIP:Ljava/lang/String;

    return-object v0
.end method

.method public getLbsSoTimeout()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsSoTimeout:I

    return v0
.end method

.method public getMd5FileMaxSize()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->md5FileMaxSize:I

    return v0
.end method

.method public getMonitorHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->monitorHost:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitorInterval()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->monitorInterval:J

    return-wide v0
.end method

.method public getPipelineFailoverPeriod()J
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->pipelineFailoverPeriod:J

    return-wide v0
.end method

.method public getQueryRetryCount()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->queryRetryCount:I

    return v0
.end method

.method public getRefreshInterval()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->refreshInterval:J

    return-wide v0
.end method

.method public getSoTimeout()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->soTimeout:I

    return v0
.end method

.method public isMonitorThreadEnabled()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->monitorThreadEnable:Z

    return v0
.end method

.method public isPipelineEnabled()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->isPipelineEnabled:Z

    return v0
.end method

.method public setChunkRetryCount(I)V
    .locals 3
    .param p1, "chunkRetryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 132
    if-gtz p1, :cond_0

    .line 133
    new-instance v0, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid chunkRetryCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-direct {v0, v1}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iput p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->chunkRetryCount:I

    .line 137
    return-void
.end method

.method public setChunkSize(I)V
    .locals 1
    .param p1, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidChunkSizeException;
        }
    .end annotation

    .prologue
    .line 119
    const/high16 v0, 0x400000

    if-gt p1, v0, :cond_0

    .line 120
    const/16 v0, 0x1000

    if-ge p1, v0, :cond_1

    .line 121
    :cond_0
    new-instance v0, Lcom/netease/cloud/nos/android/exception/InvalidChunkSizeException;

    invoke-direct {v0}, Lcom/netease/cloud/nos/android/exception/InvalidChunkSizeException;-><init>()V

    throw v0

    .line 123
    :cond_1
    iput p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->chunkSize:I

    .line 124
    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 3
    .param p1, "connectionTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 72
    if-gtz p1, :cond_0

    .line 73
    new-instance v0, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ConnectionTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-direct {v0, v1}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->connectionTimeout:I

    .line 77
    return-void
.end method

.method public setHttpClient(Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 214
    return-void
.end method

.method public setLbsConnectionTimeout(I)V
    .locals 3
    .param p1, "connectionTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 96
    if-gtz p1, :cond_0

    .line 97
    new-instance v0, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid lbsConnectionTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-direct {v0, v1}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iput p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsConnectionTimeout:I

    .line 101
    return-void
.end method

.method public setLbsHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "lbsHost"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsHost:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setLbsIP(Ljava/lang/String;)V
    .locals 2
    .param p1, "lbsIP"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p1}, Lcom/netease/cloud/nos/android/utils/Util;->isValidLbsIP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;

    const-string v1, "Invalid LbsIP"

    invoke-direct {v0, v1}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsIP:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setLbsSoTimeout(I)V
    .locals 3
    .param p1, "soTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 108
    if-gtz p1, :cond_0

    .line 109
    new-instance v0, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid lbsSoTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iput p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsSoTimeout:I

    .line 112
    return-void
.end method

.method public setMd5FileMaxSize(I)V
    .locals 3
    .param p1, "md5FileMaxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 204
    if-gez p1, :cond_0

    .line 205
    new-instance v0, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid md5FileMaxSize:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-direct {v0, v1}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    iput p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->md5FileMaxSize:I

    .line 209
    return-void
.end method

.method public setMonitorInterval(J)V
    .locals 3
    .param p1, "monitorInterval"    # J

    .prologue
    .line 170
    const-wide/32 v0, 0xea60

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 171
    sget-object v0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid monitorInterval:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    iput-wide p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->monitorInterval:J

    goto :goto_0
.end method

.method public setMonitorThread(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->monitorThreadEnable:Z

    .line 223
    return-void
.end method

.method public setMontiroHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "monitorHost"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->monitorHost:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setPipelineEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->isPipelineEnabled:Z

    .line 184
    return-void
.end method

.method public setPipelineFailoverPeriod(J)V
    .locals 3
    .param p1, "period"    # J

    .prologue
    .line 187
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 188
    sget-object v0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid pipelineFailoverPeriod:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    iput-wide p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->pipelineFailoverPeriod:J

    goto :goto_0
.end method

.method public setQueryRetryCount(I)V
    .locals 3
    .param p1, "queryRetryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 145
    if-gtz p1, :cond_0

    .line 146
    new-instance v0, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid queryRetryCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-direct {v0, v1}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iput p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->queryRetryCount:I

    .line 150
    return-void
.end method

.method public setRefreshInterval(J)V
    .locals 3
    .param p1, "refreshInterval"    # J

    .prologue
    .line 157
    const-wide/32 v0, 0xea60

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 158
    sget-object v0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid refreshInterval:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    iput-wide p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->refreshInterval:J

    goto :goto_0
.end method

.method public setSoTimeout(I)V
    .locals 3
    .param p1, "soTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 84
    if-gtz p1, :cond_0

    .line 85
    new-instance v0, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid soTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iput p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->soTimeout:I

    .line 88
    return-void
.end method
