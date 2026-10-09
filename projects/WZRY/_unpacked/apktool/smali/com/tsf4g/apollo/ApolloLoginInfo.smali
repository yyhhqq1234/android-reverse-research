.class public Lcom/tsf4g/apollo/ApolloLoginInfo;
.super Ljava/lang/Object;
.source "ApolloLoginInfo.java"


# instance fields
.field public open_sig:[B

.field public open_sig_key:[B

.field public st_sig:[B

.field public st_sig_key:[B

.field public strUin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/tsf4g/apollo/ApolloLoginInfo;->strUin:Ljava/lang/String;

    .line 3
    return-void
.end method
