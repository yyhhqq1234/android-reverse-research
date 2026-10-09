.class public Lcom/tencent/msdk/api/GameGuild;
.super Ljava/lang/Object;
.source "GameGuild.java"


# instance fields
.field public areaId:Ljava/lang/String;

.field public guildId:Ljava/lang/String;

.field public guildName:Ljava/lang/String;

.field public leaderOpenId:Ljava/lang/String;

.field public leaderRoleId:Ljava/lang/String;

.field public leaderZoneId:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public partition:Ljava/lang/String;

.field public roleId:Ljava/lang/String;

.field public roleName:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public userLabel:Ljava/lang/String;

.field public userZoneId:Ljava/lang/String;

.field public zoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/GameGuild;->guildId:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/GameGuild;->guildName:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/GameGuild;->leaderOpenId:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/GameGuild;->leaderRoleId:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/GameGuild;->leaderZoneId:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/GameGuild;->zoneId:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/GameGuild;->partition:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/GameGuild;->roleId:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/GameGuild;->roleName:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/GameGuild;->userZoneId:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/GameGuild;->userLabel:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/GameGuild;->nickName:Ljava/lang/String;

    .line 32
    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/msdk/api/GameGuild;->type:Ljava/lang/String;

    .line 34
    const-string v0, "1"

    iput-object v0, p0, Lcom/tencent/msdk/api/GameGuild;->areaId:Ljava/lang/String;

    return-void
.end method
