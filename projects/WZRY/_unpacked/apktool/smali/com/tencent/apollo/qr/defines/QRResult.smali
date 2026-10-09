.class public Lcom/tencent/apollo/qr/defines/QRResult;
.super Ljava/lang/Object;


# instance fields
.field private iTag:I

.field private imagePath:Ljava/lang/String;

.field private imageType:I

.field private retCode:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/apollo/qr/defines/QRResult;->iTag:I

    iput p2, p0, Lcom/tencent/apollo/qr/defines/QRResult;->retCode:I

    iput p3, p0, Lcom/tencent/apollo/qr/defines/QRResult;->imageType:I

    iput-object p4, p0, Lcom/tencent/apollo/qr/defines/QRResult;->imagePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/apollo/qr/defines/QRResult;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageType()I
    .locals 1

    iget v0, p0, Lcom/tencent/apollo/qr/defines/QRResult;->imageType:I

    return v0
.end method

.method public getRetCode()I
    .locals 1

    iget v0, p0, Lcom/tencent/apollo/qr/defines/QRResult;->retCode:I

    return v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lcom/tencent/apollo/qr/defines/QRResult;->iTag:I

    return v0
.end method
