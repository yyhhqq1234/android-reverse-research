.class public Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;
.super Ljava/lang/Object;
.source "PopWindowProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# instance fields
.field public accountType:I

.field public appid:Ljava/lang/String;

.field public areaId:Ljava/lang/String;

.field public banner_switch:I

.field public clientType:I

.field public gameId:Ljava/lang/String;

.field public game_ver:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public openid:Ljava/lang/String;

.field public os_ver:Ljava/lang/String;

.field public pluginMd5:Ljava/lang/String;

.field public pluginVer:Ljava/lang/String;

.field public popup_window_entry:I

.field public result:I

.field public resultstr:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->result:I

    .line 107
    iput v1, p0, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->popup_window_entry:I

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->resultstr:Ljava/lang/String;

    .line 109
    iput v1, p0, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->banner_switch:I

    return-void
.end method
