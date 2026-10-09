.class public Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/b;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public a:I

.field public b:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/b;->a:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/b;->b:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;

    .line 15
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/b;->c:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/b;->d:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/b;->e:I

    return-void
.end method
