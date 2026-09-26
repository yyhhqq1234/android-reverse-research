.class public Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;
.super Ljava/lang/Object;
.source "FinanceRep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep$RepState;
    }
.end annotation


# static fields
.field public static final REP_LOWVERSION:I = 0x5

.field public static final REP_PARAMERR:I = 0x3

.field public static final REP_REQUESTFAILED:I = 0x7

.field public static final REP_SUCCESS:I = 0x0

.field public static final REP_TIMEOUT:I = 0x4

.field public static final REP_UNKNOWCMD:I = 0x1

.field public static final REP_UNSUPPORTCLIENT:I = 0x6

.field public static final REP_USER_CANCEL:I = 0x8

.field public static final REP_VERIFYFAILED:I = 0x2


# instance fields
.field public command:Ljava/lang/String;

.field public context:Ljava/lang/String;

.field public result:Lorg/json/JSONObject;

.field public retCode:Ljava/lang/String;

.field public retDesc:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "repState"    # I
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "context"    # Ljava/lang/String;
    .param p4, "t"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->resolveRepState(I)[Ljava/lang/String;

    move-result-object v0

    .line 40
    iput-object p2, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->command:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->context:Ljava/lang/String;

    .line 42
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->retCode:Ljava/lang/String;

    .line 43
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->retDesc:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->result:Lorg/json/JSONObject;

    .line 45
    return-void
.end method

.method public static createRep(ILjava/lang/String;)Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;
    .locals 2
    .param p0, "state"    # I
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 110
    new-instance v0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private static resolveRepState(I)[Ljava/lang/String;
    .locals 4
    .param p0, "state"    # I

    .prologue
    const/4 v0, 0x0

    .line 66
    .line 68
    packed-switch p0, :pswitch_data_0

    move-object v1, v0

    .line 105
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    return-object v2

    .line 70
    :pswitch_0
    const-string v1, "0000"

    .line 71
    const-string v0, "\u6210\u529f"

    goto :goto_0

    .line 74
    :pswitch_1
    const-string v1, "1000"

    .line 75
    const-string v0, "\u672a\u77e5\u7684\u547d\u4ee4"

    goto :goto_0

    .line 78
    :pswitch_2
    const-string v1, "1001"

    .line 79
    const-string v0, "\u9a8c\u7b7e\u5931\u8d25"

    goto :goto_0

    .line 82
    :pswitch_3
    const-string v1, "1002"

    .line 83
    const-string v0, "\u53c2\u6570\u9519\u8bef"

    goto :goto_0

    .line 86
    :pswitch_4
    const-string v1, "1003"

    .line 87
    const-string v0, "\u8bf7\u6c42\u8d85\u65f6"

    goto :goto_0

    .line 90
    :pswitch_5
    const-string v1, "1004"

    .line 91
    const-string v0, "\u7248\u672c\u8fc7\u4f4e"

    goto :goto_0

    .line 94
    :pswitch_6
    const-string v1, "1005"

    .line 95
    const-string v0, "\u5ba2\u6237\u7aef\u4e0d\u652f\u6301\uff0c\u8bf7\u5347\u7ea7\u5ba2\u6237\u7aef"

    goto :goto_0

    .line 98
    :pswitch_7
    const-string v1, "2001"

    .line 99
    const-string v0, "\u8bf7\u6c42\u5931\u8d25"

    goto :goto_0

    .line 102
    :pswitch_8
    const-string v1, "2002"

    .line 103
    const-string v0, "\u7528\u6237\u53d6\u6d88"

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public toJsonString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "command"

    iget-object v2, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->command:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "context"

    iget-object v2, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->context:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "retCode"

    iget-object v2, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->retCode:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "retDesc"

    iget-object v2, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->retDesc:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    iget-object v2, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->result:Lorg/json/JSONObject;

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"command\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"retCode\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->retCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"retDesc\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->retDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
