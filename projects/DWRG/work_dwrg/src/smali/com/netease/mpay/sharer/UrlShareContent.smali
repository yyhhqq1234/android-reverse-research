.class public Lcom/netease/mpay/sharer/UrlShareContent;
.super Lcom/netease/mpay/sharer/ShareContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/sharer/UrlShareContent$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/mpay/sharer/i;

    invoke-direct {v0}, Lcom/netease/mpay/sharer/i;-><init>()V

    sput-object v0, Lcom/netease/mpay/sharer/UrlShareContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/sharer/ShareContent;-><init>()V

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

    invoke-direct {p0, p1}, Lcom/netease/mpay/sharer/ShareContent;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/sharer/UrlShareContent;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/sharer/UrlShareContent;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/netease/mpay/sharer/UrlShareContent;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/sharer/UrlShareContent;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Landroid/content/Context;Lcom/netease/mpay/sharer/UrlShareContent$a;)V
    .locals 1

    new-instance v0, Lcom/netease/mpay/sharer/j;

    invoke-direct {v0, p0, p2}, Lcom/netease/mpay/sharer/j;-><init>(Lcom/netease/mpay/sharer/UrlShareContent;Lcom/netease/mpay/sharer/UrlShareContent$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/sharer/j;->start()V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/netease/mpay/sharer/UrlShareContent;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/sharer/UrlShareContent;->a:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/mpay/sharer/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/netease/mpay/sharer/UrlShareContent;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/sharer/UrlShareContent;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
