.class public Lcom/tencent/tmdownloader/internal/a/k;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:I

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "10.0.0.172"

    sput-object v0, Lcom/tencent/tmdownloader/internal/a/k;->a:Ljava/lang/String;

    .line 26
    const/16 v0, 0x50

    sput v0, Lcom/tencent/tmdownloader/internal/a/k;->b:I

    .line 27
    const-string v0, "10.0.0.200"

    sput-object v0, Lcom/tencent/tmdownloader/internal/a/k;->c:Ljava/lang/String;

    return-void
.end method
