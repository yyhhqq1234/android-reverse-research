.class public Lcom/tencent/tmassistantbase/network/HttpClientUtil;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final HTTP_CONNECTIONTIMEOUT:I = 0x7530

.field public static final HTTP_SOCKETBUFFERSIZE:I = 0x1000

.field public static final HTTP_SOTIMEOUT:I = 0x7530

.field public static mCTProxyHost:Ljava/lang/String;

.field public static mProxyHost:Ljava/lang/String;

.field public static mProxyPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "10.0.0.172"

    sput-object v0, Lcom/tencent/tmassistantbase/network/HttpClientUtil;->mProxyHost:Ljava/lang/String;

    .line 15
    const/16 v0, 0x50

    sput v0, Lcom/tencent/tmassistantbase/network/HttpClientUtil;->mProxyPort:I

    .line 16
    const-string v0, "10.0.0.200"

    sput-object v0, Lcom/tencent/tmassistantbase/network/HttpClientUtil;->mCTProxyHost:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
