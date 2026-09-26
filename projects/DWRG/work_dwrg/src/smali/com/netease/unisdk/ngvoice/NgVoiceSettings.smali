.class public Lcom/netease/unisdk/ngvoice/NgVoiceSettings;
.super Ljava/lang/Object;
.source "NgVoiceSettings.java"


# instance fields
.field public host:Ljava/lang/String;

.field public keep_type:Ljava/lang/String;

.field public maxDuration:I

.field public tousers:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public useragent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const v0, 0x2bf20

    iput v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->maxDuration:I

    .line 46
    const-string v0, "89"

    iput-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->host:Ljava/lang/String;

    .line 47
    const-string v0, "_1_"

    iput-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->tousers:Ljava/lang/String;

    .line 48
    const-string v0, "week"

    iput-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->keep_type:Ljava/lang/String;

    .line 49
    return-void
.end method
