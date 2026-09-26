.class Lcom/netease/androidcrashhandler/DeviceInfo$DeviceInfoHolder;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceInfoHolder"
.end annotation


# static fields
.field public static INSTANCE:Lcom/netease/androidcrashhandler/DeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/netease/androidcrashhandler/DeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/androidcrashhandler/DeviceInfo;-><init>(Lcom/netease/androidcrashhandler/DeviceInfo;)V

    sput-object v0, Lcom/netease/androidcrashhandler/DeviceInfo$DeviceInfoHolder;->INSTANCE:Lcom/netease/androidcrashhandler/DeviceInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
