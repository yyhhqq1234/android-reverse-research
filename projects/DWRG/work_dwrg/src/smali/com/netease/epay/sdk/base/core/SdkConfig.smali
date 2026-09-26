.class public Lcom/netease/epay/sdk/base/core/SdkConfig;
.super Ljava/lang/Object;
.source "SdkConfig.java"


# static fields
.field public static final BTN_COLOR:[I

.field public static final BTN_TEXT_COLOR:[I

.field public static final SDK_TITLE_VIEW_BACKGROUND_COLOR:I = -0x80809

.field public static StateBarColor:I

.field public static TitleBarBackgroundColor:I

.field public static TitleBarTextColor:I

.field public static btnColor:Landroid/content/res/ColorStateList;

.field public static btnTextColor:Landroid/content/res/ColorStateList;

.field public static isDebug:Z

.field public static isLogEnable:Z

.field private static url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->isDebug:Z

    .line 18
    sput-boolean v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->isLogEnable:Z

    .line 20
    const-string v0, "https://epay.163.com/sdk_api/v1/"

    sput-object v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->url:Ljava/lang/String;

    .line 24
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->BTN_COLOR:[I

    .line 25
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->BTN_TEXT_COLOR:[I

    .line 26
    const v0, -0x80809

    sput v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->TitleBarBackgroundColor:I

    .line 27
    const v0, -0xbbbbbc

    sput v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->TitleBarTextColor:I

    .line 28
    sget v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->TitleBarBackgroundColor:I

    sput v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->StateBarColor:I

    return-void

    .line 24
    nop

    :array_0
    .array-data 4
        -0x1bc2d5
        -0x7aec1
        -0x7707aec1
    .end array-data

    .line 25
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMainColor()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 47
    sget-object v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->btnColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->BTN_COLOR:[I

    aget v0, v0, v4

    .line 50
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->btnColor:Landroid/content/res/ColorStateList;

    new-array v1, v4, [I

    const/4 v2, 0x0

    const v3, 0x101009e

    aput v3, v1, v2

    sget-object v2, Lcom/netease/epay/sdk/base/core/SdkConfig;->BTN_COLOR:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_0
.end method

.method public static getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->url:Ljava/lang/String;

    return-object v0
.end method

.method public static setEpaySdkUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sdkUrl"    # Ljava/lang/String;

    .prologue
    .line 33
    if-nez p0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.netease.epay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sput-object p1, Lcom/netease/epay/sdk/base/core/SdkConfig;->url:Ljava/lang/String;

    goto :goto_0
.end method
