.class public Lcom/netease/mpay/sharer/ShareContent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/sharer/ShareContent$ContentType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public contentType:I

.field public desc:Ljava/lang/String;

.field public extra:Ljava/lang/Object;

.field public image:Landroid/graphics/Bitmap;

.field public text:Ljava/lang/String;

.field public thumb:Landroid/graphics/Bitmap;

.field public title:Ljava/lang/String;

.field public webUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/mpay/sharer/ShareContent$1;

    invoke-direct {v0}, Lcom/netease/mpay/sharer/ShareContent$1;-><init>()V

    sput-object v0, Lcom/netease/mpay/sharer/ShareContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
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

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/sharer/ShareContent;->contentType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/sharer/ShareContent;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/sharer/ShareContent;->desc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/sharer/ShareContent;->text:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/sharer/ShareContent;->webUrl:Ljava/lang/String;

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/netease/mpay/sharer/ShareContent;->image:Landroid/graphics/Bitmap;

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/netease/mpay/sharer/ShareContent;->thumb:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/netease/mpay/sharer/ShareContent;->contentType:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, Lcom/netease/mpay/sharer/ShareContent;->text:Ljava/lang/String;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/netease/mpay/sharer/ShareContent;->image:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/netease/mpay/sharer/ShareContent;->webUrl:Ljava/lang/String;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDesc(Ljava/lang/String;)Lcom/netease/mpay/sharer/ShareContent;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/sharer/ShareContent;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public setImage(Landroid/graphics/Bitmap;)Lcom/netease/mpay/sharer/ShareContent;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/sharer/ShareContent;->image:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/netease/mpay/sharer/ShareContent;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/sharer/ShareContent;->text:Ljava/lang/String;

    return-object p0
.end method

.method public setThumb(Landroid/graphics/Bitmap;)Lcom/netease/mpay/sharer/ShareContent;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/sharer/ShareContent;->thumb:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/netease/mpay/sharer/ShareContent;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/sharer/ShareContent;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setType(I)Lcom/netease/mpay/sharer/ShareContent;
    .locals 0

    iput p1, p0, Lcom/netease/mpay/sharer/ShareContent;->contentType:I

    return-object p0
.end method

.method public setWebUrl(Ljava/lang/String;)Lcom/netease/mpay/sharer/ShareContent;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/sharer/ShareContent;->webUrl:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/netease/mpay/sharer/ShareContent;->contentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/netease/mpay/sharer/ShareContent;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/sharer/ShareContent;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/sharer/ShareContent;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/sharer/ShareContent;->webUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/sharer/ShareContent;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/netease/mpay/sharer/ShareContent;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
