.class Lcom/applovin/impl/ua$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/ua;
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
.method public a(Landroid/os/Parcel;)Lcom/applovin/impl/ua;
    .locals 1

    .line 242
    new-instance v0, Lcom/applovin/impl/ua;

    invoke-direct {v0, p1}, Lcom/applovin/impl/ua;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/applovin/impl/ua;
    .locals 0

    .line 241
    new-array p1, p1, [Lcom/applovin/impl/ua;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 232
    invoke-virtual {p0, p1}, Lcom/applovin/impl/ua$a;->a(Landroid/os/Parcel;)Lcom/applovin/impl/ua;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 232
    invoke-virtual {p0, p1}, Lcom/applovin/impl/ua$a;->a(I)[Lcom/applovin/impl/ua;

    move-result-object p1

    return-object p1
.end method
