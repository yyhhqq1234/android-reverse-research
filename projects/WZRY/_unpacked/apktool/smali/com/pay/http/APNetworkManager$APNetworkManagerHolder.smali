.class Lcom/pay/http/APNetworkManager$APNetworkManagerHolder;
.super Ljava/lang/Object;
.source "APNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pay/http/APNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "APNetworkManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/pay/http/APNetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/pay/http/APNetworkManager;

    invoke-direct {v0}, Lcom/pay/http/APNetworkManager;-><init>()V

    sput-object v0, Lcom/pay/http/APNetworkManager$APNetworkManagerHolder;->INSTANCE:Lcom/pay/http/APNetworkManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/pay/http/APNetworkManager;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/pay/http/APNetworkManager$APNetworkManagerHolder;->INSTANCE:Lcom/pay/http/APNetworkManager;

    return-object v0
.end method
