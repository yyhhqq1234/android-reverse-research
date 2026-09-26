.class final Lcom/netease/mpay/sharer/ShareContent$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netease/mpay/sharer/ShareContent;
    .locals 1

    new-instance v0, Lcom/netease/mpay/sharer/ShareContent;

    invoke-direct {v0, p1}, Lcom/netease/mpay/sharer/ShareContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/sharer/ShareContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netease/mpay/sharer/ShareContent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netease/mpay/sharer/ShareContent;
    .locals 1

    new-array v0, p1, [Lcom/netease/mpay/sharer/ShareContent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/sharer/ShareContent$1;->newArray(I)[Lcom/netease/mpay/sharer/ShareContent;

    move-result-object v0

    return-object v0
.end method
