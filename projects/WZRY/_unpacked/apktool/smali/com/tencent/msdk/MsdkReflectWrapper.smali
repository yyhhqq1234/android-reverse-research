.class public Lcom/tencent/msdk/MsdkReflectWrapper;
.super Ljava/lang/Object;
.source "MsdkReflectWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;
    }
.end annotation


# static fields
.field public static final LOGINRET:Ljava/lang/String; = "com.tencent.msdk.api.LoginRet"

.field public static final MSDK_VERSION_291:Ljava/lang/String; = "2.9.1"

.field private static TAG:Ljava/lang/String; = null

.field public static final WEGAME:Ljava/lang/String; = "com.tencent.msdk.WeGame"

.field public static final WGPLATFORM:Ljava/lang/String; = "com.tencent.msdk.api.WGPlatform"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "MsdkReflectWrapper"

    sput-object v0, Lcom/tencent/msdk/MsdkReflectWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoginInfo()Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;
    .locals 17

    .prologue
    .line 67
    new-instance v10, Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;

    invoke-direct {v10}, Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;-><init>()V

    .line 69
    .local v10, "loginInfo":Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;
    :try_start_0
    const-string v14, "com.tencent.msdk.api.WGPlatform"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 70
    .local v2, "WGPlatform":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v14, "com.tencent.msdk.api.LoginRet"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    .local v0, "LoginRet":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v14, "WGGetLoginRecord"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v0, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 72
    .local v3, "WGgetLoginRecordMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    .line 73
    .local v11, "mLoginRet":Ljava/lang/Object;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    invoke-virtual {v3, v2, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v14, "platform"

    invoke-virtual {v0, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 77
    .local v7, "flatformField":Ljava/lang/reflect/Field;
    invoke-virtual {v7, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iput v14, v10, Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;->flatform:I

    .line 80
    const-string v14, "open_id"

    invoke-virtual {v0, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 81
    .local v13, "openIdField":Ljava/lang/reflect/Field;
    invoke-virtual {v13, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v10, Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;->openId:Ljava/lang/String;

    .line 84
    const-string v14, "getAccessToken"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v0, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 85
    .local v8, "getAccessTokenMethod":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v8, v11, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v10, Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;->accessToken:Ljava/lang/String;

    .line 88
    const-string v14, "com.tencent.msdk.WeGame"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 89
    .local v5, "WeGame":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v14, "getInstance"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v5, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 90
    .local v9, "instance":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v9, v5, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 91
    .local v12, "mWeGame":Ljava/lang/Object;
    iget v14, v10, Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;->flatform:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    .line 92
    const-string v14, "qq_appid"

    invoke-virtual {v5, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 93
    .local v1, "QQ_APPID_Field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v10, Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;->appId:Ljava/lang/String;

    .line 100
    .end local v1    # "QQ_APPID_Field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    const-string v14, "logininfowrapper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "loginInfo:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v0    # "LoginRet":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "WGPlatform":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "WGgetLoginRecordMethod":Ljava/lang/reflect/Method;
    .end local v5    # "WeGame":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "flatformField":Ljava/lang/reflect/Field;
    .end local v8    # "getAccessTokenMethod":Ljava/lang/reflect/Method;
    .end local v9    # "instance":Ljava/lang/reflect/Method;
    .end local v10    # "loginInfo":Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;
    .end local v11    # "mLoginRet":Ljava/lang/Object;
    .end local v12    # "mWeGame":Ljava/lang/Object;
    .end local v13    # "openIdField":Ljava/lang/reflect/Field;
    :goto_1
    return-object v10

    .line 95
    .restart local v0    # "LoginRet":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "WGPlatform":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "WGgetLoginRecordMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "WeGame":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "flatformField":Ljava/lang/reflect/Field;
    .restart local v8    # "getAccessTokenMethod":Ljava/lang/reflect/Method;
    .restart local v9    # "instance":Ljava/lang/reflect/Method;
    .restart local v10    # "loginInfo":Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;
    .restart local v11    # "mLoginRet":Ljava/lang/Object;
    .restart local v12    # "mWeGame":Ljava/lang/Object;
    .restart local v13    # "openIdField":Ljava/lang/reflect/Field;
    :cond_1
    iget v14, v10, Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;->flatform:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 97
    const-string/jumbo v14, "wx_appid"

    invoke-virtual {v5, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 98
    .local v4, "WX_APPID_Field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v10, Lcom/tencent/msdk/MsdkReflectWrapper$LoginInfoWrapper;->appId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 103
    .end local v0    # "LoginRet":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "WGPlatform":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "WGgetLoginRecordMethod":Ljava/lang/reflect/Method;
    .end local v4    # "WX_APPID_Field":Ljava/lang/reflect/Field;
    .end local v5    # "WeGame":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "flatformField":Ljava/lang/reflect/Field;
    .end local v8    # "getAccessTokenMethod":Ljava/lang/reflect/Method;
    .end local v9    # "instance":Ljava/lang/reflect/Method;
    .end local v11    # "mLoginRet":Ljava/lang/Object;
    .end local v12    # "mWeGame":Ljava/lang/Object;
    .end local v13    # "openIdField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v6

    .line 104
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v6}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 105
    sget-object v14, Lcom/tencent/msdk/MsdkReflectWrapper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getLoginInfo ClassNotFoundException fail : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    :goto_2
    const/4 v10, 0x0

    goto :goto_1

    .line 106
    :catch_1
    move-exception v6

    .line 107
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 108
    sget-object v14, Lcom/tencent/msdk/MsdkReflectWrapper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getLoginInfo InvocationTargetException fail : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 109
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v6

    .line 110
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 111
    sget-object v14, Lcom/tencent/msdk/MsdkReflectWrapper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getLoginInfo NoSuchMethodException fail : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 112
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v6

    .line 113
    .local v6, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 114
    sget-object v14, Lcom/tencent/msdk/MsdkReflectWrapper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getLoginInfo IllegalAccessException fail : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 115
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v6

    .line 116
    .local v6, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v6}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 117
    sget-object v14, Lcom/tencent/msdk/MsdkReflectWrapper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getLoginInfo InstantiationException fail : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 118
    .end local v6    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v6

    .line 119
    .local v6, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v6}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 120
    sget-object v14, Lcom/tencent/msdk/MsdkReflectWrapper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getLoginInfo NoSuchFieldException fail : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public static getMSDKVersion()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 49
    :try_start_0
    invoke-static {}, Lcom/tencent/msdk/MsdkReflectWrapper;->getShareClassObject()Ljava/lang/Class;

    move-result-object v0

    .line 50
    .local v0, "WGPlatform":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-object v3

    .line 51
    :cond_0
    const-string v4, "WGGetVersion"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 52
    .local v2, "getVersion":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 53
    .local v3, "version":Ljava/lang/String;
    goto :goto_0

    .line 54
    .end local v2    # "getVersion":Ljava/lang/reflect/Method;
    .end local v3    # "version":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getShareClassObject()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    const-string v1, "com.tencent.msdk.api.WGPlatform"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 62
    .local v0, "WGPlatform":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0
.end method

.method public static isMsdkVersion(Ljava/lang/String;)Z
    .locals 5
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 22
    invoke-static {}, Lcom/tencent/msdk/MsdkReflectWrapper;->getMSDKVersion()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "curVersion":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v3

    .line 24
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 25
    .local v2, "lastIndex":I
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1, p0}, Lcom/tencent/qqgamemi/util/StringUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 27
    .local v0, "compare":I
    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isMsdkVersionAbove291()Z
    .locals 1

    .prologue
    .line 30
    const-string v0, "2.9.1"

    invoke-static {v0}, Lcom/tencent/msdk/MsdkReflectWrapper;->isVersionAbove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isVersionAbove(Ljava/lang/String;)Z
    .locals 5
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-static {}, Lcom/tencent/msdk/MsdkReflectWrapper;->getMSDKVersion()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "curVersion":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v3

    .line 36
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 37
    .local v2, "lastIndex":I
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v1, p0}, Lcom/tencent/qqgamemi/util/StringUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 39
    .local v0, "compare":I
    const/4 v4, -0x1

    if-le v0, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method
