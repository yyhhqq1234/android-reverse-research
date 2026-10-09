.class public final enum Lcom/netease/loginapi/qrcode/CaptureInterface$State;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/loginapi/qrcode/CaptureInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/loginapi/qrcode/CaptureInterface$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/netease/loginapi/qrcode/CaptureInterface$State;

.field public static final enum DONE:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

.field public static final enum PREVIEW:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

.field public static final enum SUCCESS:Lcom/netease/loginapi/qrcode/CaptureInterface$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    const/4 v1, 0x0

    const-string v2, "PREVIEW"

    invoke-direct {v0, v2, v1}, Lcom/netease/loginapi/qrcode/CaptureInterface$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface$State;->PREVIEW:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    new-instance v0, Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    const/4 v2, 0x1

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v2}, Lcom/netease/loginapi/qrcode/CaptureInterface$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface$State;->SUCCESS:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    new-instance v0, Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    const/4 v3, 0x2

    const-string v4, "DONE"

    invoke-direct {v0, v4, v3}, Lcom/netease/loginapi/qrcode/CaptureInterface$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface$State;->DONE:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    .line 2
    sget-object v5, Lcom/netease/loginapi/qrcode/CaptureInterface$State;->PREVIEW:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    aput-object v5, v4, v1

    sget-object v1, Lcom/netease/loginapi/qrcode/CaptureInterface$State;->SUCCESS:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/netease/loginapi/qrcode/CaptureInterface$State;->$VALUES:[Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/loginapi/qrcode/CaptureInterface$State;
    .locals 1

    .line 1
    const-class v0, Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    return-object p0
.end method

.method public static values()[Lcom/netease/loginapi/qrcode/CaptureInterface$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface$State;->$VALUES:[Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    invoke-virtual {v0}, [Lcom/netease/loginapi/qrcode/CaptureInterface$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    return-object v0
.end method
