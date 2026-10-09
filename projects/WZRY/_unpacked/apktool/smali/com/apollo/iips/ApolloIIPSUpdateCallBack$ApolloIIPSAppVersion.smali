.class public Lcom/apollo/iips/ApolloIIPSUpdateCallBack$ApolloIIPSAppVersion;
.super Ljava/lang/Object;
.source "ApolloIIPSUpdateCallBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apollo/iips/ApolloIIPSUpdateCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApolloIIPSAppVersion"
.end annotation


# instance fields
.field public versionNumberFour:S

.field public versionNumberOne:S

.field public versionNumberThree:S

.field public versionNumberTwo:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-short v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateCallBack$ApolloIIPSAppVersion;->versionNumberOne:S

    .line 8
    iput-short v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateCallBack$ApolloIIPSAppVersion;->versionNumberTwo:S

    .line 9
    iput-short v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateCallBack$ApolloIIPSAppVersion;->versionNumberThree:S

    .line 10
    iput-short v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateCallBack$ApolloIIPSAppVersion;->versionNumberFour:S

    .line 5
    return-void
.end method
