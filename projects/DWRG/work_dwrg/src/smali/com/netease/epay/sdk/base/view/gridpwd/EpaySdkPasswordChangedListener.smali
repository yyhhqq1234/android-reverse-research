.class public abstract Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;
.super Ljava/lang/Object;
.source "EpaySdkPasswordChangedListener.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/view/gridpwd/OnPasswordChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public randomKey16Byte()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/netease/epay/sdk/base/util/DigestUtil;->getAesKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
