.class public Lcom/apollo/iips/ApolloIIPSUpdateCallBack$ApolloIIPSVersionInfo;
.super Ljava/lang/Object;
.source "ApolloIIPSUpdateCallBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apollo/iips/ApolloIIPSUpdateCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApolloIIPSVersionInfo"
.end annotation


# instance fields
.field public isAppDiffUpdating:Z

.field public isAppUpdating:Z

.field public isForcedUpdating:Z

.field public needDownloadSize:J

.field public newAppVersion:Lcom/apollo/iips/ApolloIIPSUpdateCallBack$ApolloIIPSAppVersion;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateCallBack$ApolloIIPSVersionInfo;->isAppUpdating:Z

    .line 15
    iput-boolean v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateCallBack$ApolloIIPSVersionInfo;->isAppDiffUpdating:Z

    .line 16
    iput-boolean v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateCallBack$ApolloIIPSVersionInfo;->isForcedUpdating:Z

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateCallBack$ApolloIIPSVersionInfo;->needDownloadSize:J

    .line 12
    return-void
.end method
