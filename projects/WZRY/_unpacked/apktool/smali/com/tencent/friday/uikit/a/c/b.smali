.class public Lcom/tencent/friday/uikit/a/c/b;
.super Ljava/lang/Object;
.source "UKType.java"


# direct methods
.method public static a(Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;)D
    .locals 3

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;->getVal()Ljava/lang/String;

    move-result-object v2

    .line 16
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 18
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 22
    :goto_0
    return-wide v0

    .line 19
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a(Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;)F
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;->getVal()Ljava/lang/String;

    move-result-object v1

    .line 31
    const/high16 v0, -0x40800000    # -1.0f

    .line 33
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 37
    :goto_0
    return v0

    .line 34
    :catch_0
    move-exception v1

    goto :goto_0
.end method
