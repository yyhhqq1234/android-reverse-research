.class public Lcom/tencent/msdk/MSDKManager;
.super Ljava/lang/Object;
.source "MSDKManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final instance:Lcom/tencent/msdk/MSDKManager;

.field private static ticketCache:Ljava/lang/String;


# instance fields
.field private msdk_accesToken:Ljava/lang/String;

.field private msdk_appId:Ljava/lang/String;

.field private msdk_openid:Ljava/lang/String;

.field private msdk_platForm:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "MSDKManager"

    sput-object v0, Lcom/tencent/msdk/MSDKManager;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/tencent/msdk/MSDKManager;

    invoke-direct {v0}, Lcom/tencent/msdk/MSDKManager;-><init>()V

    sput-object v0, Lcom/tencent/msdk/MSDKManager;->instance:Lcom/tencent/msdk/MSDKManager;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/MSDKManager;->ticketCache:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/tencent/msdk/MSDKManager;->msdk_appId:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/tencent/msdk/MSDKManager;->msdk_openid:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/tencent/msdk/MSDKManager;->msdk_accesToken:Ljava/lang/String;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/msdk/MSDKManager;->msdk_platForm:I

    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/MSDKManager;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/tencent/msdk/MSDKManager;->instance:Lcom/tencent/msdk/MSDKManager;

    return-object v0
.end method


# virtual methods
.method public getMsdkLoginInfo()Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;-><init>(Lcom/tencent/msdk/MSDKManager;)V

    .line 89
    .local v0, "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    iget-object v1, p0, Lcom/tencent/msdk/MSDKManager;->msdk_appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkAppID:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/tencent/msdk/MSDKManager;->msdk_openid:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkOpenID:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/tencent/msdk/MSDKManager;->msdk_accesToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkAcessToken:Ljava/lang/String;

    .line 92
    iget v1, p0, Lcom/tencent/msdk/MSDKManager;->msdk_platForm:I

    iput v1, v0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkLoginType:I

    .line 94
    return-object v0
.end method

.method public refreshMSDKTicket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "openId"    # Ljava/lang/String;
    .param p4, "platform"    # I
    .param p5, "accessToken"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p5, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    const-string v3, "appid:%s,openid:%s,flatform:%d,accessToken:%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p3, v4, v2

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p5, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "ticket":Ljava/lang/String;
    sget-object v3, Lcom/tencent/msdk/MSDKManager;->ticketCache:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/tencent/msdk/MSDKManager;->ticketCache:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    sget-object v2, Lcom/tencent/msdk/MSDKManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "ticket is same !"

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    sget-object v1, Lcom/tencent/msdk/MSDKManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p2, p3, p5, p4}, Lcom/tencent/msdk/MSDKManager;->setLoginInfoWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    sput-object v0, Lcom/tencent/msdk/MSDKManager;->ticketCache:Ljava/lang/String;

    move v1, v2

    .line 109
    goto :goto_0
.end method

.method public reqMsdkLoginInfo()Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    .locals 22

    .prologue
    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/MSDKManager;->getMsdkLoginInfo()Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;

    move-result-object v14

    .line 33
    .local v14, "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    invoke-virtual {v14}, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->validated()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 34
    sget-object v19, Lcom/tencent/msdk/MSDKManager;->TAG:Ljava/lang/String;

    const-string v20, "reqMsdkLoginInfo from getMsdkLoginInfo..."

    invoke-static/range {v19 .. v20}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v14

    .end local v14    # "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    .local v15, "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    move-object/from16 v16, v14

    .line 76
    .end local v15    # "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    .local v16, "msdkLoginBean":Ljava/lang/Object;
    :goto_0
    return-object v16

    .line 37
    .end local v16    # "msdkLoginBean":Ljava/lang/Object;
    .restart local v14    # "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    :cond_0
    new-instance v14, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;

    .end local v14    # "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;-><init>(Lcom/tencent/msdk/MSDKManager;)V

    .line 41
    .restart local v14    # "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    :try_start_0
    invoke-static {}, Lcom/tencent/msdk/MsdkReflectWrapper;->isMsdkVersionAbove291()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 42
    invoke-static {}, Lcom/tencent/msdk/MsdkReflectWrapper;->getLoginInfo()Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;

    move-result-object v11

    .line 43
    .local v11, "loginInfoWrapper":Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;
    if-nez v11, :cond_1

    move-object v15, v14

    .end local v14    # "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    .restart local v15    # "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    move-object/from16 v16, v14

    .restart local v16    # "msdkLoginBean":Ljava/lang/Object;
    goto :goto_0

    .line 44
    .end local v15    # "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    .end local v16    # "msdkLoginBean":Ljava/lang/Object;
    .restart local v14    # "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    :cond_1
    iget-object v0, v11, Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;->accessToken:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkAcessToken:Ljava/lang/String;

    .line 45
    iget-object v0, v11, Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;->appId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkAppID:Ljava/lang/String;

    .line 46
    iget-object v0, v11, Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;->openId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkOpenID:Ljava/lang/String;

    .line 47
    iget v0, v11, Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;->flatform:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v14, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkLoginType:I

    move-object v15, v14

    .end local v14    # "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    .restart local v15    # "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    move-object/from16 v16, v14

    .line 48
    .restart local v16    # "msdkLoginBean":Ljava/lang/Object;
    goto :goto_0

    .line 51
    .end local v11    # "loginInfoWrapper":Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;
    .end local v15    # "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    .end local v16    # "msdkLoginBean":Ljava/lang/Object;
    .restart local v14    # "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    :cond_2
    const-string v19, "com.tencent.msdk.qmi.MsdkApiForQmi"

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 52
    .local v7, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v19, "getLoginInfo"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 53
    .local v13, "method":Ljava/lang/reflect/Method;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 54
    .local v9, "loginInfo":Ljava/lang/Object;
    const-string v19, "com.tencent.msdk.qmi.LoginInfo"

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 55
    .local v10, "loginInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v19, "appId"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 56
    .local v5, "appIdField":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 57
    .local v4, "appId":Ljava/lang/String;
    iput-object v4, v14, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkAppID:Ljava/lang/String;

    .line 59
    const-string v19, "platform"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 60
    .local v6, "appKeyField":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 61
    .local v12, "loginType":I
    iput v12, v14, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkLoginType:I

    .line 63
    const-string v19, "openId"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 64
    .local v18, "openIdField":Ljava/lang/reflect/Field;
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 65
    .local v17, "openId":Ljava/lang/String;
    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkOpenID:Ljava/lang/String;

    .line 67
    const-string v19, "accessToken"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 68
    .local v3, "accessTokenField":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 69
    .local v2, "accessToken":Ljava/lang/String;
    iput-object v2, v14, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkAcessToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "accessToken":Ljava/lang/String;
    .end local v3    # "accessTokenField":Ljava/lang/reflect/Field;
    .end local v4    # "appId":Ljava/lang/String;
    .end local v5    # "appIdField":Ljava/lang/reflect/Field;
    .end local v6    # "appKeyField":Ljava/lang/reflect/Field;
    .end local v7    # "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "loginInfo":Ljava/lang/Object;
    .end local v10    # "loginInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "loginType":I
    .end local v13    # "method":Ljava/lang/reflect/Method;
    .end local v17    # "openId":Ljava/lang/String;
    .end local v18    # "openIdField":Ljava/lang/reflect/Field;
    :goto_1
    move-object v15, v14

    .end local v14    # "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    .restart local v15    # "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    move-object/from16 v16, v14

    .line 76
    .restart local v16    # "msdkLoginBean":Ljava/lang/Object;
    goto/16 :goto_0

    .line 71
    .end local v15    # "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    .end local v16    # "msdkLoginBean":Ljava/lang/Object;
    .restart local v14    # "msdkLoginBean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    :catch_0
    move-exception v8

    .line 72
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    sget-object v19, Lcom/tencent/msdk/MSDKManager;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getLoginInfo fail : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setLoginInfoWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "accesToken"    # Ljava/lang/String;
    .param p4, "platForm"    # I

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tencent/msdk/MSDKManager;->msdk_appId:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/tencent/msdk/MSDKManager;->msdk_openid:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/tencent/msdk/MSDKManager;->msdk_accesToken:Ljava/lang/String;

    .line 84
    iput p4, p0, Lcom/tencent/msdk/MSDKManager;->msdk_platForm:I

    .line 85
    return-void
.end method
