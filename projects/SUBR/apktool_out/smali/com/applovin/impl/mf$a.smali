.class Lcom/applovin/impl/mf$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/applovin/impl/mf;
    .locals 2

    .line 133
    new-instance v0, Lcom/applovin/impl/mf;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/mf;-><init>(Landroid/os/Parcel;Lcom/applovin/impl/mf$a;)V

    return-object v0
.end method

.method public a(I)[Lcom/applovin/impl/mf;
    .locals 0

    .line 132
    new-array p1, p1, [Lcom/applovin/impl/mf;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/applovin/impl/mf$a;->a(Landroid/os/Parcel;)Lcom/applovin/impl/mf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/applovin/impl/mf$a;->a(I)[Lcom/applovin/impl/mf;

    move-result-object p1

    return-object p1
.end method
