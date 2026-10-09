.class public Loicq/wlogin_sdk/request/WUserSigInfo;
.super Ljava/lang/Object;
.source "WUserSigInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Loicq/wlogin_sdk/request/WUserSigInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _domains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public _fastLoginBuf:[B

.field public _in_ksid:[B

.field public _login_bitmap:I

.field public _reserveData:[B

.field public _seqence:J

.field public _tickets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Loicq/wlogin_sdk/request/Ticket;",
            ">;"
        }
    .end annotation
.end field

.field public extraLoginTLVMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Loicq/wlogin_sdk/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public regTLVMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Loicq/wlogin_sdk/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public stList:[[B

.field public uin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Loicq/wlogin_sdk/request/WUserSigInfo$1;

    invoke-direct {v0}, Loicq/wlogin_sdk/request/WUserSigInfo$1;-><init>()V

    sput-object v0, Loicq/wlogin_sdk/request/WUserSigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_login_bitmap:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_domains:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->regTLVMap:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->extraLoginTLVMap:Ljava/util/Map;

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_login_bitmap:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_domains:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->regTLVMap:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->extraLoginTLVMap:Ljava/util/Map;

    .line 110
    invoke-virtual {p0, p1}, Loicq/wlogin_sdk/request/WUserSigInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Loicq/wlogin_sdk/request/WUserSigInfo$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V
    .locals 9

    .prologue
    .line 34
    iget-object v0, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->cacheTickets:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WUserSigInfo::get_clone using cacheTickets last update stamp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->cacheUpdateStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->cacheTickets:Ljava/util/List;

    iput-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    .line 80
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    iget-object v8, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    const/4 v1, 0x2

    iget-object v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA5:[B

    const/4 v3, 0x0

    iget-wide v4, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA5_create_time:J

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v8, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    const/high16 v1, 0x200000

    iget-object v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_aqSig:[B

    const/4 v3, 0x0

    iget-wide v4, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_aqSig_create_time:J

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v8, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    const/16 v1, 0x2000

    iget-object v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSig64:[B

    const/4 v3, 0x0

    iget-wide v4, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSig64_create_time:J

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v8, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    const/high16 v1, 0x100000

    iget-object v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_superKey:[B

    const/4 v3, 0x0

    iget-wide v4, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey_create_time:J

    iget-object v6, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey:[B

    iget-object v7, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pt4Token:[B

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJ[B[B)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v8, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    const/16 v1, 0x4000

    iget-object v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openkey:[B

    iget-object v3, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openid:[B

    iget-wide v4, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openkey_create_time:J

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v8, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    const v1, 0x8000

    iget-object v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_access_token:[B

    iget-object v3, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openid:[B

    iget-wide v4, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_access_token_create_time:J

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v8, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    const/16 v1, 0x80

    iget-object v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    iget-object v3, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    iget-wide v4, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig_create_time:J

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v8, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    const/16 v1, 0x10

    iget-object v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8:[B

    const/4 v3, 0x0

    iget-wide v4, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8_create_time:J

    iget-wide v6, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8_expire_time:J

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v8, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    const/16 v1, 0x200

    iget-object v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey:[B

    const/4 v3, 0x0

    iget-wide v4, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey_create_time:J

    iget-wide v6, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey_expire_time:J

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v8, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    const/16 v1, 0x1000

    iget-object v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey:[B

    const/4 v3, 0x0

    iget-wide v4, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey_create_time:J

    iget-wide v6, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey_expire_time:J

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v8, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    const/high16 v1, 0x20000

    iget-object v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vkey:[B

    const/4 v3, 0x0

    iget-wide v4, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vkey_create_time:J

    iget-wide v6, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vKey_expire_time:J

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v8, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    const/16 v1, 0x40

    iget-object v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    iget-object v3, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGTKey:[B

    iget-wide v4, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_A2_create_time:J

    iget-wide v6, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_A2_expire_time:J

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v8, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    const/high16 v1, 0x40000

    iget-object v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2:[B

    iget-object v3, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2Key:[B

    iget-wide v4, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2_create_time:J

    iget-wide v6, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2_expire_time:J

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v8, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    const/high16 v1, 0x80000

    iget-object v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid:[B

    const/4 v3, 0x0

    iget-wide v4, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid_create_time:J

    iget-wide v6, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid_expire_time:J

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v8, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    const/16 v1, 0x20

    iget-object v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig:[B

    const/4 v3, 0x0

    iget-wide v4, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig_create_time:J

    iget-wide v6, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig_expire_time:J

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v8, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    const/high16 v1, 0x800000

    iget-object v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pay_token:[B

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v8, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    const/high16 v1, 0x1000000

    iget-object v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pf:[B

    iget-object v3, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pfKey:[B

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v1, "WUserSigInfo.get_clone add da2 %d"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_DA2:[B

    if-eqz v0, :cond_1

    iget-object v0, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_DA2:[B

    array-length v0, v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v8, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    const/high16 v1, 0x2000000

    iget-object v2, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_DA2:[B

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    iput-object v0, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->cacheTickets:Ljava/util/List;

    .line 79
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_server_cur_time()J

    move-result-wide v0

    iput-wide v0, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->cacheUpdateStamp:J

    goto/16 :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_login_bitmap:I

    .line 105
    const-class v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_domains:Ljava/util/List;

    .line 106
    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    sget-object v1, Loicq/wlogin_sdk/request/Ticket;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 107
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 90
    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 91
    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 92
    iget-wide v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_login_bitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_domains:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 95
    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 96
    return-void
.end method
