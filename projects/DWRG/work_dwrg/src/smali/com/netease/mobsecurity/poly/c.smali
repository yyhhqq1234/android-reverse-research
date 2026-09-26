.class public abstract Lcom/netease/mobsecurity/poly/c;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/netease/mobsecurity/poly/b;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x7

.field public static final f:I = 0x9

.field public static final g:I = 0xb

.field public static final h:I = 0xd

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\'rC\u000b%sJW+tJ\u000b-sZ@6sOIjiKI!mFJ*d\u0000l\u0014uAK!N[G\rsHJ"

    sput-object v0, Lcom/netease/mobsecurity/poly/c;->i:Ljava/lang/String;

    sget-object v0, Lcom/netease/mobsecurity/poly/c;->i:Ljava/lang/String;

    const-string v1, "D\u001d.%"

    invoke-static {v0, v1}, Lcom/netease/mobsecurity/poly/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/mobsecurity/poly/c;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    sget-object v0, Lcom/netease/mobsecurity/poly/c;->j:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/netease/mobsecurity/poly/c;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/netease/mobsecurity/poly/b;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netease/mobsecurity/poly/c;->j:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/netease/mobsecurity/poly/b;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/netease/mobsecurity/poly/b;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netease/mobsecurity/poly/d;

    invoke-direct {v0, p0}, Lcom/netease/mobsecurity/poly/d;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netease/mobsecurity/poly/c;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    sget-object v1, Lcom/netease/mobsecurity/poly/c;->j:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    sget-object v1, Lcom/netease/mobsecurity/poly/c;->j:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/mobsecurity/poly/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    sget-object v1, Lcom/netease/mobsecurity/poly/c;->j:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/mobsecurity/poly/c;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    sget-object v1, Lcom/netease/mobsecurity/poly/c;->j:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/mobsecurity/poly/c;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    sget-object v1, Lcom/netease/mobsecurity/poly/c;->j:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/mobsecurity/poly/c;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    sget-object v1, Lcom/netease/mobsecurity/poly/c;->j:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/mobsecurity/poly/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_6
    sget-object v1, Lcom/netease/mobsecurity/poly/c;->j:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/mobsecurity/poly/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_7
    sget-object v1, Lcom/netease/mobsecurity/poly/c;->j:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/mobsecurity/poly/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    sget-object v1, Lcom/netease/mobsecurity/poly/c;->j:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/mobsecurity/poly/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x7 -> :sswitch_5
        0x9 -> :sswitch_6
        0xb -> :sswitch_7
        0xd -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
