.class public Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;
.super Ljava/lang/Object;
.source "UpdateProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# instance fields
.field public accountType:I

.field public appid:Ljava/lang/String;

.field public areaId:Ljava/lang/String;

.field public clientType:I

.field public configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

.field public gameId:Ljava/lang/String;

.field public game_ver:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public openid:Ljava/lang/String;

.field public os_ver:Ljava/lang/String;

.field public pluginMd5:Ljava/lang/String;

.field public pluginVer:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public unity_ver:Ljava/lang/String;

.field public user_level:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->user_level:I

    .line 152
    new-instance v0, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    invoke-direct {v0}, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;-><init>()V

    iput-object v0, p0, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    return-void
.end method
