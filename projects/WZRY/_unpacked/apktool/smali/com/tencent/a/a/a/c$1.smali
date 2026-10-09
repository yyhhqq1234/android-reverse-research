.class final Lcom/tencent/a/a/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tencent/a/a/a/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/tencent/a/a/a/c;
    .locals 8

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    new-instance v3, Lcom/tencent/a/a/a/c;

    new-instance v4, Lcom/tencent/a/a/a/e;

    float-to-double v6, v0

    float-to-double v0, v1

    invoke-direct {v4, v6, v7, v0, v1}, Lcom/tencent/a/a/a/e;-><init>(DD)V

    invoke-direct {v3, v4, v2}, Lcom/tencent/a/a/a/c;-><init>(Lcom/tencent/a/a/a/e;F)V

    return-object v3
.end method

.method public final a(I)[Lcom/tencent/a/a/a/c;
    .locals 1

    new-array v0, p1, [Lcom/tencent/a/a/a/c;

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/a/a/a/c$1;->a(Landroid/os/Parcel;)Lcom/tencent/a/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/a/a/a/c$1;->a(I)[Lcom/tencent/a/a/a/c;

    move-result-object v0

    return-object v0
.end method
