.class Lcom/tencent/mna/base/f/k$a;
.super Ljava/lang/Object;
.source "NetworkChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/base/f/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/tencent/mna/base/f/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/tencent/mna/base/f/k;

    invoke-direct {v0}, Lcom/tencent/mna/base/f/k;-><init>()V

    sput-object v0, Lcom/tencent/mna/base/f/k$a;->a:Lcom/tencent/mna/base/f/k;

    return-void
.end method

.method static synthetic a()Lcom/tencent/mna/base/f/k;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/tencent/mna/base/f/k$a;->a:Lcom/tencent/mna/base/f/k;

    return-object v0
.end method
