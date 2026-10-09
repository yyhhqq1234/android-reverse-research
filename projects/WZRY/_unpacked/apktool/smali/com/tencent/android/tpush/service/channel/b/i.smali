.class public abstract Lcom/tencent/android/tpush/service/channel/b/i;
.super Lcom/tencent/android/tpush/service/channel/b/f;
.source "ProGuard"


# static fields
.field static final synthetic o:Z


# instance fields
.field protected d:S

.field protected e:I

.field protected f:J

.field protected g:J

.field protected h:S

.field protected i:S

.field protected k:S

.field protected l:S

.field protected m:S

.field protected n:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/tencent/android/tpush/service/channel/b/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/android/tpush/service/channel/b/i;->o:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b/f;-><init>()V

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b/i;->n:[B

    .line 51
    return-void
.end method


# virtual methods
.method public a(S)V
    .locals 0

    .prologue
    .line 134
    iput-short p1, p0, Lcom/tencent/android/tpush/service/channel/b/i;->h:S

    .line 135
    return-void
.end method

.method public a([B)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/b/i;->n:[B

    .line 159
    return-void
.end method

.method public b(S)V
    .locals 0

    .prologue
    .line 150
    iput-short p1, p0, Lcom/tencent/android/tpush/service/channel/b/i;->k:S

    .line 151
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 54
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/i;->h:S

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()B
    .locals 1

    .prologue
    .line 62
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/i;->h:S

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b/i;->f()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TPNS_COMMAND_UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b/i;->f()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 73
    :pswitch_0
    const-string v0, "TPNS_COMMAND_PUSH"

    goto :goto_0

    .line 76
    :pswitch_1
    const-string v0, "TPNS_COMMAND_GET_APLIST"

    goto :goto_0

    .line 79
    :pswitch_2
    const-string v0, "TPNS_COMMAND_PULLCONFIG"

    goto :goto_0

    .line 82
    :pswitch_3
    const-string v0, "TPNS_COMMAND_REGISTER"

    goto :goto_0

    .line 85
    :pswitch_4
    const-string v0, "TPNS_COMMAND_UNREGISTER"

    goto :goto_0

    .line 88
    :pswitch_5
    const-string v0, "TPNS_COMMAND_RECONNECT"

    goto :goto_0

    .line 91
    :pswitch_6
    const-string v0, "TPNS_COMMAND_HEARTBEAT"

    goto :goto_0

    .line 94
    :pswitch_7
    const-string v0, "TPNS_COMMAND_UNINSTALL"

    goto :goto_0

    .line 97
    :pswitch_8
    const-string v0, "TPNS_COMMAND_CLIENTREPORT"

    goto :goto_0

    .line 100
    :pswitch_9
    const-string v0, "TPNS_COMMAND_REDIRECT"

    goto :goto_0

    .line 103
    :pswitch_a
    const-string v0, "TPNS_COMMAND_PUSH_VERIFY"

    goto :goto_0

    .line 106
    :pswitch_b
    const-string v0, "TPNS_COMMAND_SPEEDTEST"

    goto :goto_0

    .line 109
    :pswitch_c
    const-string v0, "TPNS_COMMAND_TRIGGER_REPORT"

    goto :goto_0

    .line 112
    :pswitch_d
    const-string v0, "TPNS_COMMAND_CHECK_MSG"

    goto :goto_0

    .line 115
    :pswitch_e
    const-string v0, "TPNS_COMMAND_TAG"

    goto :goto_0

    .line 118
    :pswitch_f
    const-string v0, "TPNS_COMMAND_PUSH_CLICK"

    goto :goto_0

    .line 121
    :pswitch_10
    const-string v0, "TPNS_COMMAND_UPDATE_OTH_TOKEN"

    goto :goto_0

    .line 123
    :pswitch_11
    const-string v0, "TPNS_COMMAND_PUSH_COMM_REPORT"

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public h()S
    .locals 1

    .prologue
    .line 130
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/i;->h:S

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/tencent/android/tpush/service/channel/b/i;->e:I

    return v0
.end method

.method public j()S
    .locals 1

    .prologue
    .line 146
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/i;->k:S

    return v0
.end method

.method public k()[B
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b/i;->n:[B

    return-object v0
.end method

.method public l()S
    .locals 1

    .prologue
    .line 162
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/i;->m:S

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " protocol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v1, p0, Lcom/tencent/android/tpush/service/channel/b/i;->k:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " command = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b/i;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " isResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b/i;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " packetLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/android/tpush/service/channel/b/i;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "(p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v1, p0, Lcom/tencent/android/tpush/service/channel/b/i;->k:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "|v:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v1, p0, Lcom/tencent/android/tpush/service/channel/b/i;->l:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "|r:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/android/tpush/service/channel/b/i;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "|s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/channel/b/i;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "|c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v1, p0, Lcom/tencent/android/tpush/service/channel/b/i;->h:S

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "|r:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v1, p0, Lcom/tencent/android/tpush/service/channel/b/i;->m:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "|l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/android/tpush/service/channel/b/i;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
