.class public Lcom/tencent/tmdownloader/internal/logreport/e;
.super Lcom/tencent/tmdownloader/internal/logreport/b;
.source "ProGuard"


# static fields
.field protected static d:Lcom/tencent/tmdownloader/internal/logreport/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmdownloader/internal/logreport/e;->d:Lcom/tencent/tmdownloader/internal/logreport/e;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tencent/tmdownloader/internal/logreport/b;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method protected e()Lcom/tencent/tmdownloader/internal/b/c/a;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/c/g;->g()Lcom/tencent/tmdownloader/internal/b/c/g;

    move-result-object v0

    return-object v0
.end method

.method protected f()B
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method
