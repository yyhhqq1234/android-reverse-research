.class public Lcom/netease/neox/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# static fields
.field public static final COMMON_SUC_RET:Ljava/lang/String; = "{\"retCode\": 0}"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs createJsonObj([Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 4

    .line 13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 15
    :goto_0
    :try_start_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 16
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    .line 17
    aget-object v3, p0, v3

    .line 18
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 21
    const-string v1, "JSONUtils"

    const-string v2, "create json obj failed: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method public static varargs createJsonObjWithRetCode(I[Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 2

    .line 27
    invoke-static {p1}, Lcom/netease/neox/JSONUtils;->createJsonObj([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 29
    :try_start_0
    const-string v0, "retCode"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 31
    const-string v0, "JSONUtils"

    const-string v1, "json obj put failed: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p1
.end method

.method public static createJsonStrWithFailedReason(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 45
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "reason"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, -0x1

    invoke-static {p0, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/netease/neox/JSONUtils;->createJsonObjWithRetCode(I[Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
