.class Lcom/netease/androidcrashhandler/MyNetworkUtils$MyNetworkUtilsHolder;
.super Ljava/lang/Object;
.source "MyNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/MyNetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyNetworkUtilsHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/netease/androidcrashhandler/MyNetworkUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/netease/androidcrashhandler/MyNetworkUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/androidcrashhandler/MyNetworkUtils;-><init>(Lcom/netease/androidcrashhandler/MyNetworkUtils;)V

    sput-object v0, Lcom/netease/androidcrashhandler/MyNetworkUtils$MyNetworkUtilsHolder;->INSTANCE:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
