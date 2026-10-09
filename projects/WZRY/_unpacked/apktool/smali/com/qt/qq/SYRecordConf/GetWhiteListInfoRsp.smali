.class public final Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;
.super Lcom/squareup/wire/Message;
.source "GetWhiteListInfoRsp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_BZID:Ljava/lang/Integer;

.field public static final DEFAULT_IN_WHITELIST:Ljava/lang/Boolean;

.field public static final DEFAULT_RESULT:Ljava/lang/Integer;

.field public static final DEFAULT_SWITCH:Ljava/lang/Long;


# instance fields
.field public final _switch:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final bzid:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final in_whitelist:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final result:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->DEFAULT_RESULT:Ljava/lang/Integer;

    .line 16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->DEFAULT_IN_WHITELIST:Ljava/lang/Boolean;

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->DEFAULT_BZID:Ljava/lang/Integer;

    .line 18
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->DEFAULT_SWITCH:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;

    .prologue
    .line 49
    iget-object v0, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;->result:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;->in_whitelist:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;->bzid:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;->_switch:Ljava/lang/Long;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;
    .param p2, "x1"    # Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;-><init>(Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Integer;
    .param p2, "in_whitelist"    # Ljava/lang/Boolean;
    .param p3, "bzid"    # Ljava/lang/Integer;
    .param p4, "_switch"    # Ljava/lang/Long;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->result:Ljava/lang/Integer;

    .line 43
    iput-object p2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->in_whitelist:Ljava/lang/Boolean;

    .line 44
    iput-object p3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->bzid:Ljava/lang/Integer;

    .line 45
    iput-object p4, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->_switch:Ljava/lang/Long;

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    if-ne p1, p0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 56
    :cond_1
    instance-of v3, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 57
    check-cast v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;

    .line 58
    .local v0, "o":Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;
    iget-object v3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->result:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->result:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->in_whitelist:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->in_whitelist:Ljava/lang/Boolean;

    .line 59
    invoke-virtual {p0, v3, v4}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->bzid:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->bzid:Ljava/lang/Integer;

    .line 60
    invoke-virtual {p0, v3, v4}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->_switch:Ljava/lang/Long;

    iget-object v4, v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->_switch:Ljava/lang/Long;

    .line 61
    invoke-virtual {p0, v3, v4}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 66
    iget v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->hashCode:I

    .line 67
    .local v0, "result":I
    if-nez v0, :cond_1

    .line 68
    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->result:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->result:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 69
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->in_whitelist:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->in_whitelist:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 70
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->bzid:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->bzid:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 71
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->_switch:Ljava/lang/Long;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->_switch:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 72
    iput v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->hashCode:I

    .line 74
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 68
    goto :goto_0

    :cond_3
    move v2, v1

    .line 69
    goto :goto_1

    :cond_4
    move v2, v1

    .line 70
    goto :goto_2
.end method
