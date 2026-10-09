.class public final enum Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;
.super Ljava/lang/Enum;
.source "CCLiveConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/newlive/CCLiveConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CAPTURE_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CAMERA_LIVE:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

.field public static final enum CAMERA_LIVE_2nd:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

.field public static final enum SCREEN_LIVE:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

.field private static final synthetic a:[Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 114
    new-instance v0, Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    const/4 v1, 0x0

    const-string v2, "CAMERA_LIVE"

    invoke-direct {v0, v2, v1}, Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;->CAMERA_LIVE:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    .line 115
    new-instance v0, Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    const/4 v2, 0x1

    const-string v3, "CAMERA_LIVE_2nd"

    invoke-direct {v0, v3, v2}, Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;->CAMERA_LIVE_2nd:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    .line 116
    new-instance v0, Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    const/4 v3, 0x2

    const-string v4, "SCREEN_LIVE"

    invoke-direct {v0, v4, v3}, Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;->SCREEN_LIVE:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    .line 113
    sget-object v4, Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;->CAMERA_LIVE:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;->CAMERA_LIVE_2nd:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;->SCREEN_LIVE:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;->a:[Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;
    .locals 1

    .line 113
    const-class v0, Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    return-object p0
.end method

.method public static values()[Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;
    .locals 1

    .line 113
    sget-object v0, Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;->a:[Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    invoke-virtual {v0}, [Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    return-object v0
.end method
