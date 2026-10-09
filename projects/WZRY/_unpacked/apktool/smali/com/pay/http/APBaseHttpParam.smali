.class public Lcom/pay/http/APBaseHttpParam;
.super Ljava/lang/Object;
.source "APBaseHttpParam.java"


# static fields
.field public static final CONNECT_TIMEOUT:I = 0x3a98

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field public static final READ_TIMEOUT:I = 0x3a98

.field public static final TRY_TIMES:I = 0x2


# instance fields
.field public begTime:J

.field public connectTimeout:I

.field public defaultDomain:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public endTime:J

.field public port:Ljava/lang/String;

.field public reTryTimes:I

.field public readTimeout:I

.field public reqParam:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public reqType:Ljava/lang/String;

.field public requestTimes:I

.field public sendType:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public urlName:Ljava/lang/String;

.field public urlParams:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    const-string v0, "^(([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.){3}([01]?\\d\\d?|2[0-4]\\d|25[0-5])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/pay/http/APBaseHttpParam;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/16 v1, 0x3a98

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "http://"

    iput-object v0, p0, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    .line 21
    const-string v0, "GET"

    iput-object v0, p0, Lcom/pay/http/APBaseHttpParam;->sendType:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/http/APBaseHttpParam;->defaultDomain:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/http/APBaseHttpParam;->port:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/http/APBaseHttpParam;->urlName:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/http/APBaseHttpParam;->urlParams:Ljava/lang/String;

    .line 37
    iput v1, p0, Lcom/pay/http/APBaseHttpParam;->connectTimeout:I

    .line 39
    iput v1, p0, Lcom/pay/http/APBaseHttpParam;->readTimeout:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/pay/http/APBaseHttpParam;->requestTimes:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/pay/http/APBaseHttpParam;->reTryTimes:I

    .line 47
    iput-wide v2, p0, Lcom/pay/http/APBaseHttpParam;->begTime:J

    .line 50
    iput-wide v2, p0, Lcom/pay/http/APBaseHttpParam;->endTime:J

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pay/http/APBaseHttpParam;->reqParam:Ljava/util/HashMap;

    .line 55
    invoke-static {}, Lcom/pay/tool/APMidasTools;->getSysServerDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static validateIPV4(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    .line 221
    sget-object v0, Lcom/pay/http/APBaseHttpParam;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public constructParams()V
    .locals 5

    .prologue
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "params":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/pay/http/APBaseHttpParam;->reqParam:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/pay/http/APBaseHttpParam;->reqParam:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 191
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pay/http/APBaseHttpParam;->urlParams:Ljava/lang/String;

    .line 197
    :cond_1
    const-string v2, "APBaseHttpReq"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "urlParams="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pay/http/APBaseHttpParam;->urlParams:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public constructReTryUrl()V
    .locals 3

    .prologue
    .line 202
    iget v1, p0, Lcom/pay/http/APBaseHttpParam;->requestTimes:I

    iget v2, p0, Lcom/pay/http/APBaseHttpParam;->reTryTimes:I

    if-ge v1, v2, :cond_1

    .line 205
    iget-object v1, p0, Lcom/pay/http/APBaseHttpParam;->defaultDomain:Ljava/lang/String;

    iput-object v1, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    .line 206
    const-string v0, ""

    .line 207
    .local v0, "portNum":Ljava/lang/String;
    iget-object v1, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/pay/http/APBaseHttpParam;->isIPAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pay/http/APBaseHttpParam;->port:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pay/http/APBaseHttpParam;->port:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pay/http/APBaseHttpParam;->urlName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pay/http/APBaseHttpParam;->url:Ljava/lang/String;

    .line 213
    iget v1, p0, Lcom/pay/http/APBaseHttpParam;->requestTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pay/http/APBaseHttpParam;->requestTimes:I

    .line 215
    .end local v0    # "portNum":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public constructUrl()V
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/pay/http/APBaseHttpParam;->constructParams()V

    .line 167
    iget-object v1, p0, Lcom/pay/http/APBaseHttpParam;->sendType:Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 169
    .local v0, "urlBuffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/pay/http/APBaseHttpParam;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    iget-object v1, p0, Lcom/pay/http/APBaseHttpParam;->url:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/pay/http/APBaseHttpParam;->urlParams:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pay/http/APBaseHttpParam;->url:Ljava/lang/String;

    .line 177
    .end local v0    # "urlBuffer":Ljava/lang/StringBuffer;
    :cond_1
    return-void
.end method

.method public isIPAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-static {p1}, Lcom/pay/http/APBaseHttpParam;->validateIPV4(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setReportUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "devCgi"    # Ljava/lang/String;
    .param p2, "testCgi"    # Ljava/lang/String;
    .param p3, "releaseCgi"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v1, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    .line 102
    .local v1, "strEnv":Ljava/lang/String;
    const-string v0, ""

    .line 104
    .local v0, "portNum":Ljava/lang/String;
    const-string v2, "dev"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    const-string v2, "dev.api.unipay.qq.com"

    iput-object v2, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lcom/pay/http/APBaseHttpParam;->urlName:Ljava/lang/String;

    .line 118
    :cond_0
    :goto_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/pay/http/APBaseHttpParam;->reTryTimes:I

    .line 119
    iget-object v2, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    iput-object v2, p0, Lcom/pay/http/APBaseHttpParam;->defaultDomain:Ljava/lang/String;

    .line 121
    const-string v2, "dev"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->urlName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pay/http/APBaseHttpParam;->url:Ljava/lang/String;

    .line 131
    :cond_1
    :goto_1
    return-void

    .line 107
    :cond_2
    const-string/jumbo v2, "test"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    const-string v2, "sandbox.api.unipay.qq.com"

    iput-object v2, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/pay/http/APBaseHttpParam;->urlName:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_3
    const-string v2, "release"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 111
    const-string/jumbo v2, "szmg.qq.com"

    iput-object v2, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/pay/http/APBaseHttpParam;->urlName:Ljava/lang/String;

    goto :goto_0

    .line 113
    :cond_4
    const-string/jumbo v2, "testing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    const-string/jumbo v2, "szmg.qq.com"

    iput-object v2, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/pay/http/APBaseHttpParam;->urlName:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_5
    const-string/jumbo v2, "test"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->urlName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pay/http/APBaseHttpParam;->url:Ljava/lang/String;

    goto :goto_1

    .line 125
    :cond_6
    const-string v2, "release"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->urlName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pay/http/APBaseHttpParam;->url:Ljava/lang/String;

    goto/16 :goto_1

    .line 127
    :cond_7
    const-string/jumbo v2, "testing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->urlName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pay/http/APBaseHttpParam;->url:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public setReqWithHttp()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "http://"

    iput-object v0, p0, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setReqWithHttps()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "https://"

    iput-object v0, p0, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setSendWithGet()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "GET"

    iput-object v0, p0, Lcom/pay/http/APBaseHttpParam;->sendType:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setSendWithPost()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "POST"

    iput-object v0, p0, Lcom/pay/http/APBaseHttpParam;->sendType:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "customCgi"    # Ljava/lang/String;
    .param p2, "devCgi"    # Ljava/lang/String;
    .param p3, "testCgi"    # Ljava/lang/String;
    .param p4, "releaseCgi"    # Ljava/lang/String;

    .prologue
    .line 135
    sget-object v1, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    .line 138
    .local v1, "strEnv":Ljava/lang/String;
    const-string v0, ""

    .line 139
    .local v0, "portNum":Ljava/lang/String;
    iget-object v2, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/pay/http/APBaseHttpParam;->isIPAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pay/http/APBaseHttpParam;->port:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->port:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_0
    const-string v2, "dev"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    iput-object p2, p0, Lcom/pay/http/APBaseHttpParam;->urlName:Ljava/lang/String;

    .line 145
    const-string v2, "dev.api.unipay.qq.com"

    iput-object v2, p0, Lcom/pay/http/APBaseHttpParam;->defaultDomain:Ljava/lang/String;

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pay/http/APBaseHttpParam;->url:Ljava/lang/String;

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    const-string/jumbo v2, "test"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    iput-object p3, p0, Lcom/pay/http/APBaseHttpParam;->urlName:Ljava/lang/String;

    .line 149
    const-string v2, "sandbox.api.unipay.qq.com"

    iput-object v2, p0, Lcom/pay/http/APBaseHttpParam;->defaultDomain:Ljava/lang/String;

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pay/http/APBaseHttpParam;->url:Ljava/lang/String;

    goto :goto_0

    .line 151
    :cond_3
    const-string/jumbo v2, "testing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 152
    iput-object p3, p0, Lcom/pay/http/APBaseHttpParam;->urlName:Ljava/lang/String;

    .line 153
    const-string v2, "sandbox.api.unipay.qq.com"

    iput-object v2, p0, Lcom/pay/http/APBaseHttpParam;->defaultDomain:Ljava/lang/String;

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pay/http/APBaseHttpParam;->url:Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_4
    const-string v2, "release"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    iput-object p4, p0, Lcom/pay/http/APBaseHttpParam;->urlName:Ljava/lang/String;

    .line 157
    const-string v2, "api.unipay.qq.com"

    iput-object v2, p0, Lcom/pay/http/APBaseHttpParam;->defaultDomain:Ljava/lang/String;

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pay/http/APBaseHttpParam;->url:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setUrlNotMidas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "customCgi"    # Ljava/lang/String;
    .param p2, "devCgi"    # Ljava/lang/String;
    .param p3, "testCgi"    # Ljava/lang/String;
    .param p4, "releaseCgi"    # Ljava/lang/String;

    .prologue
    .line 83
    sget-object v0, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    .line 84
    .local v0, "strEnv":Ljava/lang/String;
    const-string v1, ""

    iput-object v1, p0, Lcom/pay/http/APBaseHttpParam;->defaultDomain:Ljava/lang/String;

    .line 85
    const-string/jumbo v1, "testing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iput-object p2, p0, Lcom/pay/http/APBaseHttpParam;->urlName:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/pay/http/APBaseHttpParam;->url:Ljava/lang/String;

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string/jumbo v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    iput-object p3, p0, Lcom/pay/http/APBaseHttpParam;->urlName:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/pay/http/APBaseHttpParam;->url:Ljava/lang/String;

    goto :goto_0

    .line 91
    :cond_2
    const-string v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iput-object p4, p0, Lcom/pay/http/APBaseHttpParam;->urlName:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/pay/http/APBaseHttpParam;->url:Ljava/lang/String;

    goto :goto_0
.end method
