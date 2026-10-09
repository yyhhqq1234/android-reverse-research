.class public Lcom/tencent/tdm/TDataMaster;
.super Ljava/lang/Object;


# static fields
.field private static Instance:Lcom/tencent/tdm/TDataMaster; = null

.field private static isInitialized:Z = false

.field private static lifecycle:C = '\u0000'

.field private static final tag:Ljava/lang/String; = "TDataMaster"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "TDataMaster"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/tdm/TDataMaster;

    invoke-direct {v0}, Lcom/tencent/tdm/TDataMaster;-><init>()V

    sput-object v0, Lcom/tencent/tdm/TDataMaster;->Instance:Lcom/tencent/tdm/TDataMaster;

    sput-char v1, Lcom/tencent/tdm/TDataMaster;->lifecycle:C

    sput-boolean v1, Lcom/tencent/tdm/TDataMaster;->isInitialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TDataMaster"

    const-string v1, "TDataMaster Construct"

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native TDMEnableReport(Z)V
.end method

.method private native TDMGetUID()Ljava/lang/String;
.end method

.method private native TDMInit()V
.end method

.method private native TDMPause()V
.end method

.method private native TDMReportBuy(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V
.end method

.method private native TDMReportConsume(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method private native TDMReportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native TDMReportLogin(Lcom/tencent/tdm/defines/UserInfo;)V
.end method

.method private native TDMReportLogout()V
.end method

.method private native TDMReportPay(Ljava/lang/String;Ljava/lang/String;IIIDLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native TDMReportReward(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method private native TDMReportUpgrade(ILjava/lang/String;)V
.end method

.method private native TDMResume()V
.end method

.method private native TDMSetLogLevel(I)V
.end method

.method private native TDMSetUserInfo(Lcom/tencent/tdm/defines/UserInfo;)V
.end method

.method private native TDMTaskBegin(Ljava/lang/String;)V
.end method

.method private native TDMTaskEnd(Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public static getInstance()Lcom/tencent/tdm/TDataMaster;
    .locals 1

    sget-object v0, Lcom/tencent/tdm/TDataMaster;->Instance:Lcom/tencent/tdm/TDataMaster;

    return-object v0
.end method


# virtual methods
.method public enableReport(Z)V
    .locals 2

    const-string v0, "TDataMaster"

    const-string v1, "enableReport"

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/tdm/TDataMaster;->TDMEnableReport(Z)V

    return-void
.end method

.method public getTDMUID()Ljava/lang/String;
    .locals 2

    const-string v0, "TDataMaster"

    const-string v1, "getTDMUID"

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/tdm/TDataMaster;->TDMGetUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "TDataMaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDataMaster initialize(onCreate): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/tencent/tdm/TDataMaster;->isInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/tdm/TDataMaster;->isInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/tdm/system/TX;->GetInstance()Lcom/tencent/tdm/system/TX;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tdm/system/TX;->Initialize(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/tencent/tdm/TDataMaster;->TDMInit()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/tdm/TDataMaster;->isInitialized:Z

    :cond_0
    invoke-static {}, Lcom/tencent/tdm/system/TX;->GetInstance()Lcom/tencent/tdm/system/TX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tdm/system/TX;->RegisterReceiver()V

    sget-boolean v0, Lcom/tencent/tdm/TDataMaster;->isInitialized:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "TDataMaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnActivityResult requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "TDataMaster"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tdm/system/TX;->GetInstance()Lcom/tencent/tdm/system/TX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tdm/system/TX;->UnregisterReceiver()V

    const/16 v0, 0x20

    sput-char v0, Lcom/tencent/tdm/TDataMaster;->lifecycle:C

    return-void
.end method

.method public onPause()V
    .locals 3

    const/16 v2, 0x8

    const-string v0, "TDataMaster"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-char v0, Lcom/tencent/tdm/TDataMaster;->lifecycle:C

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/tencent/tdm/TDataMaster;->TDMPause()V

    :cond_0
    sput-char v2, Lcom/tencent/tdm/TDataMaster;->lifecycle:C

    return-void
.end method

.method public onRestart()V
    .locals 2

    const-string v0, "TDataMaster"

    const-string v1, "OnRestart"

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x40

    sput-char v0, Lcom/tencent/tdm/TDataMaster;->lifecycle:C

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x4

    const-string v0, "TDataMaster"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-char v0, Lcom/tencent/tdm/TDataMaster;->lifecycle:C

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/tencent/tdm/TDataMaster;->TDMResume()V

    :cond_0
    sput-char v2, Lcom/tencent/tdm/TDataMaster;->lifecycle:C

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "TDataMaster"

    const-string v1, "OnStart"

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    sput-char v0, Lcom/tencent/tdm/TDataMaster;->lifecycle:C

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "TDataMaster"

    const-string v1, "OnStop"

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    sput-char v0, Lcom/tencent/tdm/TDataMaster;->lifecycle:C

    return-void
.end method

.method public reportBuy(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V
    .locals 3

    const-string v0, "TDataMaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportBuy: itemID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p7}, Lcom/tencent/tdm/TDataMaster;->TDMReportBuy(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public reportConsume(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3

    const-string v0, "TDataMaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportConsume: itemID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/tdm/TDataMaster;->TDMReportConsume(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TDataMaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "TDataMaster"

    const-string v1, "eventInfo is null or empty"

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/tdm/TDataMaster;->TDMReportEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public reportLogin(Lcom/tencent/tdm/defines/UserInfo;)V
    .locals 2

    const-string v0, "TDataMaster"

    const-string v1, "ReportLogin"

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/tdm/TDataMaster;->TDMReportLogin(Lcom/tencent/tdm/defines/UserInfo;)V

    return-void
.end method

.method public reportLogout()V
    .locals 2

    const-string v0, "TDataMaster"

    const-string v1, "ReportLogout"

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/tdm/TDataMaster;->TDMReportLogout()V

    return-void
.end method

.method public reportPay(Ljava/lang/String;Ljava/lang/String;IIIDLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "TDataMaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportPay: orderID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p9}, Lcom/tencent/tdm/TDataMaster;->TDMReportPay(Ljava/lang/String;Ljava/lang/String;IIIDLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reportReward(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3

    const-string v0, "TDataMaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportReward: itemID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/tdm/TDataMaster;->TDMReportReward(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public reportUpgrade(ILjava/lang/String;)V
    .locals 3

    const-string v0, "TDataMaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportUpgrade: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/tencent/tdm/TDataMaster;->TDMReportUpgrade(ILjava/lang/String;)V

    return-void
.end method

.method public setLogLevel(I)V
    .locals 3

    const-string v0, "TDataMaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetLogLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tdm/system/TX;->GetInstance()Lcom/tencent/tdm/system/TX;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tdm/system/TX;->SetLogLevel(I)V

    invoke-direct {p0, p1}, Lcom/tencent/tdm/TDataMaster;->TDMSetLogLevel(I)V

    return-void
.end method

.method public setUserInfo(Lcom/tencent/tdm/defines/UserInfo;)V
    .locals 2

    const-string v0, "TDataMaster"

    const-string v1, "SetUserInfo"

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/tdm/TDataMaster;->TDMSetUserInfo(Lcom/tencent/tdm/defines/UserInfo;)V

    return-void
.end method

.method public taskBegin(Ljava/lang/String;)V
    .locals 3

    const-string v0, "TDataMaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskBegin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/tdm/TDataMaster;->TDMTaskBegin(Ljava/lang/String;)V

    return-void
.end method

.method public taskEnd(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    const-string v0, "TDataMaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tdm/TDataMaster;->TDMTaskEnd(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
