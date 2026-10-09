.class public Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;
.super Ljava/lang/Object;
.source "WtloginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loicq/wlogin_sdk/request/WtloginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickLoginParam"
.end annotation


# instance fields
.field public appid:J

.field public dstAppid:J

.field public dstSubAppidList:[J

.field public forceWebLogin:Z

.field public isUserAccountLocked:Z

.field public sigMap:I

.field public subAppid:J

.field public userAccount:Ljava/lang/String;

.field public userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5820
    iput-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->forceWebLogin:Z

    .line 5821
    iput-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->isUserAccountLocked:Z

    .line 5824
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->subAppid:J

    .line 5825
    new-instance v0, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v0}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    .line 5826
    return-void
.end method
