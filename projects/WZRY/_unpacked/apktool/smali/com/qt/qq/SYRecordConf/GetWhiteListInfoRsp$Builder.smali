.class public final Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "GetWhiteListInfoRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public _switch:Ljava/lang/Long;

.field public bzid:Ljava/lang/Integer;

.field public in_whitelist:Ljava/lang/Boolean;

.field public result:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;)V
    .locals 1
    .param p1, "message"    # Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 89
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->result:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;->result:Ljava/lang/Integer;

    .line 91
    iget-object v0, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->in_whitelist:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;->in_whitelist:Ljava/lang/Boolean;

    .line 92
    iget-object v0, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->bzid:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;->bzid:Ljava/lang/Integer;

    .line 93
    iget-object v0, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->_switch:Ljava/lang/Long;

    iput-object v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;->_switch:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public _switch(Ljava/lang/Long;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;
    .locals 0
    .param p1, "_switch"    # Ljava/lang/Long;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;->_switch:Ljava/lang/Long;

    .line 122
    return-object p0
.end method

.method public build()Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;->checkRequiredFields()V

    .line 128
    new-instance v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;-><init>(Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;->build()Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;

    move-result-object v0

    return-object v0
.end method

.method public bzid(Ljava/lang/Integer;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;
    .locals 0
    .param p1, "bzid"    # Ljava/lang/Integer;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;->bzid:Ljava/lang/Integer;

    .line 114
    return-object p0
.end method

.method public in_whitelist(Ljava/lang/Boolean;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;
    .locals 0
    .param p1, "in_whitelist"    # Ljava/lang/Boolean;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;->in_whitelist:Ljava/lang/Boolean;

    .line 106
    return-object p0
.end method

.method public result(Ljava/lang/Integer;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;
    .locals 0
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp$Builder;->result:Ljava/lang/Integer;

    .line 98
    return-object p0
.end method
