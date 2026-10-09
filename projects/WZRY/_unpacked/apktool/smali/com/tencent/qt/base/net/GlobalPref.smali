.class public Lcom/tencent/qt/base/net/GlobalPref;
.super Ljava/lang/Object;
.source "GlobalPref.java"


# static fields
.field private static final LIB_NAME_NETWORKHELPER:Ljava/lang/String; = "networkhelper"

.field private static final instant:Lcom/tencent/qt/base/net/GlobalPref;


# instance fields
.field private TAG:Ljava/lang/String;

.field private volatile isLoadLibary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/tencent/qt/base/net/GlobalPref;

    invoke-direct {v0}, Lcom/tencent/qt/base/net/GlobalPref;-><init>()V

    sput-object v0, Lcom/tencent/qt/base/net/GlobalPref;->instant:Lcom/tencent/qt/base/net/GlobalPref;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "GlobalPref"

    iput-object v0, p0, Lcom/tencent/qt/base/net/GlobalPref;->TAG:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qt/base/net/GlobalPref;->isLoadLibary:Z

    .line 13
    return-void
.end method

.method public static getInstant()Lcom/tencent/qt/base/net/GlobalPref;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/tencent/qt/base/net/GlobalPref;->instant:Lcom/tencent/qt/base/net/GlobalPref;

    return-object v0
.end method


# virtual methods
.method public isLoadLibary()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/tencent/qt/base/net/GlobalPref;->isLoadLibary:Z

    return v0
.end method

.method public loadLibary()V
    .locals 3

    .prologue
    .line 19
    iget-boolean v1, p0, Lcom/tencent/qt/base/net/GlobalPref;->isLoadLibary:Z

    if-eqz v1, :cond_0

    .line 28
    :goto_0
    return-void

    .line 21
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qt/base/net/GlobalPref;->TAG:Ljava/lang/String;

    const-string v2, "load library : networkhelper"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qt/base/net/GlobalPref;->isLoadLibary:Z

    .line 23
    const-string v1, "networkhelper"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    iget-object v1, p0, Lcom/tencent/qt/base/net/GlobalPref;->TAG:Ljava/lang/String;

    const-string v2, "load library fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qt/base/net/GlobalPref;->isLoadLibary:Z

    goto :goto_0
.end method
