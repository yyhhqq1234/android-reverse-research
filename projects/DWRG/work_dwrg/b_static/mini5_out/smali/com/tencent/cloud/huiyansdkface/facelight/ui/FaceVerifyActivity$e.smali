.class public final enum Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;

.field private static final synthetic b:[Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;

    const-string v1, "FaceLiveFragment"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;->a:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;

    aput-object v0, v1, v2

    sput-object v1, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;->b:[Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;
    .locals 1

    const-class v0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;
    .locals 1

    sget-object v0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;->b:[Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;

    invoke-virtual {v0}, [Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;

    return-object v0
.end method
