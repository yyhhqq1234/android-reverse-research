.class public Lcom/tencent/msdk/sdkwrapper/MSDKJniHelper/MSDKMethodC2J;
.super Ljava/lang/Object;
.source "MSDKMethodC2J.java"


# static fields
.field private static clazz:Ljava/lang/Class;

.field private static mainActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/tencent/msdk/sdkwrapper/MSDKJniHelper/MSDKMethodC2J;

    sput-object v0, Lcom/tencent/msdk/sdkwrapper/MSDKJniHelper/MSDKMethodC2J;->clazz:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buglyLog(ILjava/lang/String;)V
    .locals 1
    .param p0, "buglyLogLevel"    # I
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/tencent/msdk/stat/eBuglyLogLevel;->getEnum(I)Lcom/tencent/msdk/stat/eBuglyLogLevel;

    move-result-object v0

    .line 125
    .local v0, "elogLevel":Lcom/tencent/msdk/stat/eBuglyLogLevel;
    invoke-static {v0, p1}, Lcom/tencent/msdk/sdkwrapper/bugly/MSDKBuglyUtil;->buglyLog(Lcom/tencent/msdk/stat/eBuglyLogLevel;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static callJavaMethod(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "jsonData"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v5, 0x0

    .line 36
    .local v5, "jobj":Lorg/json/JSONObject;
    const/4 v10, 0x0

    .line 37
    .local v10, "methodName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 38
    .local v12, "parmsData":[Ljava/lang/Object;
    const/4 v11, 0x0

    .line 39
    .local v11, "paramsClass":[Ljava/lang/Class;
    const-string v13, ""

    .line 41
    .local v13, "result":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5

    .line 42
    .end local v5    # "jobj":Lorg/json/JSONObject;
    .local v6, "jobj":Lorg/json/JSONObject;
    :try_start_1
    const-string v14, "paramsData"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 43
    .local v7, "jsonDataArray":Lorg/json/JSONArray;
    const-string v14, "paramsClass"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 45
    .local v8, "jsonTypeArray":Lorg/json/JSONArray;
    if-eqz v8, :cond_8

    .line 46
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v12, v14, [Ljava/lang/Object;

    .line 47
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v11, v14, [Ljava/lang/Class;

    .line 48
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v4, v14, :cond_0

    .line 49
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v4

    .line 48
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 52
    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v4, v14, :cond_8

    .line 53
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "jsonTypeArray.get(i):"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    .local v1, "className":Ljava/lang/String;
    const-string v14, "int.class"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 57
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v11, v4

    .line 52
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 58
    :cond_1
    const-string v14, "short.class"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 59
    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v14, v11, v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_2

    .line 87
    .end local v1    # "className":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v7    # "jsonDataArray":Lorg/json/JSONArray;
    .end local v8    # "jsonTypeArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 88
    .end local v6    # "jobj":Lorg/json/JSONObject;
    .local v2, "e":Lorg/json/JSONException;
    .restart local v5    # "jobj":Lorg/json/JSONObject;
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "json format error:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 89
    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    .line 104
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_4
    return-object v13

    .line 60
    .end local v5    # "jobj":Lorg/json/JSONObject;
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v6    # "jobj":Lorg/json/JSONObject;
    .restart local v7    # "jsonDataArray":Lorg/json/JSONArray;
    .restart local v8    # "jsonTypeArray":Lorg/json/JSONArray;
    :cond_2
    :try_start_2
    const-string v14, "byte.class"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 61
    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v14, v11, v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    .line 90
    .end local v1    # "className":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v7    # "jsonDataArray":Lorg/json/JSONArray;
    .end local v8    # "jsonTypeArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v2

    move-object v5, v6

    .line 91
    .end local v6    # "jobj":Lorg/json/JSONObject;
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    .restart local v5    # "jobj":Lorg/json/JSONObject;
    :goto_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "json type error:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 92
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "class not found:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 93
    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 62
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v5    # "jobj":Lorg/json/JSONObject;
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v6    # "jobj":Lorg/json/JSONObject;
    .restart local v7    # "jsonDataArray":Lorg/json/JSONArray;
    .restart local v8    # "jsonTypeArray":Lorg/json/JSONArray;
    :cond_3
    :try_start_3
    const-string v14, "long.class"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 63
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v14, v11, v4
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    .line 94
    .end local v1    # "className":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v7    # "jsonDataArray":Lorg/json/JSONArray;
    .end local v8    # "jsonTypeArray":Lorg/json/JSONArray;
    :catch_2
    move-exception v2

    move-object v5, v6

    .line 95
    .end local v6    # "jobj":Lorg/json/JSONObject;
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    .restart local v5    # "jobj":Lorg/json/JSONObject;
    :goto_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "json method name error:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 96
    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 64
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "jobj":Lorg/json/JSONObject;
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v6    # "jobj":Lorg/json/JSONObject;
    .restart local v7    # "jsonDataArray":Lorg/json/JSONArray;
    .restart local v8    # "jsonTypeArray":Lorg/json/JSONArray;
    :cond_4
    :try_start_4
    const-string v14, "float.class"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 65
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v14, v11, v4
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    .line 97
    .end local v1    # "className":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v7    # "jsonDataArray":Lorg/json/JSONArray;
    .end local v8    # "jsonTypeArray":Lorg/json/JSONArray;
    :catch_3
    move-exception v2

    move-object v5, v6

    .line 98
    .end local v6    # "jobj":Lorg/json/JSONObject;
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v5    # "jobj":Lorg/json/JSONObject;
    :goto_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "json method params error:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 99
    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 66
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v5    # "jobj":Lorg/json/JSONObject;
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v6    # "jobj":Lorg/json/JSONObject;
    .restart local v7    # "jsonDataArray":Lorg/json/JSONArray;
    .restart local v8    # "jsonTypeArray":Lorg/json/JSONArray;
    :cond_5
    :try_start_5
    const-string v14, "double.class"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 67
    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v14, v11, v4
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_2

    .line 100
    .end local v1    # "className":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v7    # "jsonDataArray":Lorg/json/JSONArray;
    .end local v8    # "jsonTypeArray":Lorg/json/JSONArray;
    :catch_4
    move-exception v2

    move-object v5, v6

    .line 101
    .end local v6    # "jobj":Lorg/json/JSONObject;
    .local v2, "e":Ljava/lang/IllegalAccessException;
    .restart local v5    # "jobj":Lorg/json/JSONObject;
    :goto_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "json method could not be acessed:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 102
    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 68
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v5    # "jobj":Lorg/json/JSONObject;
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v6    # "jobj":Lorg/json/JSONObject;
    .restart local v7    # "jsonDataArray":Lorg/json/JSONArray;
    .restart local v8    # "jsonTypeArray":Lorg/json/JSONArray;
    :cond_6
    :try_start_6
    const-string v14, "boolean.class"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 69
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v14, v11, v4

    goto/16 :goto_2

    .line 71
    :cond_7
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v11, v4

    goto/16 :goto_2

    .line 77
    .end local v1    # "className":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_8
    const-string v14, "functionName"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "functionName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "functionName:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 79
    if-nez v11, :cond_9

    .line 80
    sget-object v14, Lcom/tencent/msdk/sdkwrapper/MSDKJniHelper/MSDKMethodC2J;->clazz:Ljava/lang/Class;

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v14, v3, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 81
    .local v9, "method":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v9, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    :goto_9
    move-object v5, v6

    .line 103
    .end local v6    # "jobj":Lorg/json/JSONObject;
    .restart local v5    # "jobj":Lorg/json/JSONObject;
    goto/16 :goto_4

    .line 83
    .end local v5    # "jobj":Lorg/json/JSONObject;
    .end local v9    # "method":Ljava/lang/reflect/Method;
    .restart local v6    # "jobj":Lorg/json/JSONObject;
    :cond_9
    sget-object v14, Lcom/tencent/msdk/sdkwrapper/MSDKJniHelper/MSDKMethodC2J;->clazz:Ljava/lang/Class;

    invoke-virtual {v14, v3, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 84
    .restart local v9    # "method":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    invoke-virtual {v9, v14, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/lang/String;

    move-object v13, v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_9

    .line 100
    .end local v3    # "functionName":Ljava/lang/String;
    .end local v6    # "jobj":Lorg/json/JSONObject;
    .end local v7    # "jsonDataArray":Lorg/json/JSONArray;
    .end local v8    # "jsonTypeArray":Lorg/json/JSONArray;
    .end local v9    # "method":Ljava/lang/reflect/Method;
    .restart local v5    # "jobj":Lorg/json/JSONObject;
    :catch_5
    move-exception v2

    goto :goto_8

    .line 97
    :catch_6
    move-exception v2

    goto/16 :goto_7

    .line 94
    :catch_7
    move-exception v2

    goto/16 :goto_6

    .line 90
    :catch_8
    move-exception v2

    goto/16 :goto_5

    .line 87
    :catch_9
    move-exception v2

    goto/16 :goto_3
.end method

.method public static getBuglyVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/bugly/MSDKBuglyUtil;->getBuglyVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMSDKSVNcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getMSDKSVNCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNoticeData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "scene"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string v0, ""

    return-object v0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 2
    .param p0, "gameMainActivity"    # Landroid/app/Activity;

    .prologue
    .line 26
    sput-object p0, Lcom/tencent/msdk/sdkwrapper/MSDKJniHelper/MSDKMethodC2J;->mainActivity:Landroid/app/Activity;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mainActivity is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/msdk/sdkwrapper/MSDKJniHelper/MSDKMethodC2J;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static initBugly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "openId"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {p0, p1, p2}, Lcom/tencent/msdk/sdkwrapper/bugly/MSDKBuglyUtil;->initBugly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public static removeGameStatus(Ljava/lang/String;)V
    .locals 0
    .param p0, "statusKey"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p0}, Lcom/tencent/msdk/sdkwrapper/bugly/MSDKBuglyUtil;->removeGameStatus(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public static setGameStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "gameStatus"    # Ljava/lang/String;
    .param p1, "statusKey"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {p0, p1}, Lcom/tencent/msdk/sdkwrapper/bugly/MSDKBuglyUtil;->setGameStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static setLoginStateToBuglySDK(Ljava/lang/String;)V
    .locals 0
    .param p0, "openId"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/tencent/msdk/sdkwrapper/bugly/MSDKBuglyUtil;->setLoginStateToBuglySDK(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static startAutoTest()V
    .locals 2

    .prologue
    .line 128
    const-string v1, "startAutoTest"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 129
    sget-object v1, Lcom/tencent/msdk/sdkwrapper/MSDKJniHelper/MSDKMethodC2J;->mainActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 130
    new-instance v0, Lcom/tencent/msdk/testplugin/Tester;

    sget-object v1, Lcom/tencent/msdk/sdkwrapper/MSDKJniHelper/MSDKMethodC2J;->mainActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/tencent/msdk/testplugin/Tester;-><init>(Landroid/app/Activity;)V

    .line 131
    .local v0, "tester":Lcom/tencent/msdk/testplugin/Tester;
    invoke-virtual {v0}, Lcom/tencent/msdk/testplugin/Tester;->startTest()V

    .line 135
    .end local v0    # "tester":Lcom/tencent/msdk/testplugin/Tester;
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v1, "mainActivity is null"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stopAutoTest()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method
