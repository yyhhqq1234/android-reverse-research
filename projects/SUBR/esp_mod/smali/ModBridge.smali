.class public Lcom/android/support/ModBridge;
.super Ljava/lang/Object;
.source "ModBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static concat([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    invoke-static {}, Lcom/android/support/ModBridge;->nativeGetFeatures()[Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :cond_old
    if-eqz p0, :native_only
    array-length v1, p0
    array-length v2, v0
    add-int v3, v1, v2
    new-array v4, v3, [Ljava/lang/String;
    const/4 v5, 0x0
    :loop_old
    if-ge v5, v1, :done_old
    aget-object v6, p0, v5
    aput-object v6, v4, v5
    add-int/lit8 v5, v5, 0x1
    goto :loop_old
    :done_old
    const/4 v5, 0x0
    :loop_new
    if-ge v5, v2, :done_new
    aget-object v6, v0, v5
    add-int v7, v1, v5
    aput-object v6, v4, v7
    add-int/lit8 v5, v5, 0x1
    goto :loop_new
    :done_new
    move-object p0, v4
    goto :cond_old
    :native_only
    move-object p0, v0
    :cond_old
    return-object p0
.end method

.method public static onBool(Ljava/lang/String;Z)V
    .locals 3
    invoke-static {p0, p1}, Lcom/android/support/ModBridge;->nativeOnBool(Ljava/lang/String;Z)V
    return-void
.end method

.method public static onInt(Ljava/lang/String;I)V
    .locals 3
    invoke-static {p0, p1}, Lcom/android/support/ModBridge;->nativeOnInt(Ljava/lang/String;I)V
    return-void
.end method

.method public static onLong(Ljava/lang/String;J)V
    .locals 4
    long-to-int v0, p1
    invoke-static {p0, v0}, Lcom/android/support/ModBridge;->nativeOnInt(Ljava/lang/String;I)V
    return-void
.end method

.method public static native nativeGetFeatures()[Ljava/lang/String;
.end method

.method public static native nativeOnBool(Ljava/lang/String;Z)V
.end method

.method public static native nativeOnInt(Ljava/lang/String;I)V
.end method
